/// @description Trying to parse response by HTTP request
///
/// @function					ParseHttpResponse(id, status, bodyStr, url, httpStatus)
/// @param {real} id			Index of HTTP request
/// @param {real} status		Request status (GM-status)
/// @param {string} bodyStr		Body of response
/// @param {string} url			URL of HTTP request
/// @param {real} httpStatus	The raw http status code

function ParseHttpResponse(id, status, bodyStr, url, httpStatus) {
	var net = global.networkManager;
	var body = undefined;
	var req = undefined;
	var i = 0;
	var reqFind = false;
	
	// If debug mode is on - log response
	if (global.debug) {
		show_debug_message("[HTTP-Response] (" + string(id) + "#) " + url + "\n" + bodyStr);
	}
	
	// Search request in listRequests
	for (i = 0; i < ds_list_size(net.listRequests); ++i) {
		req = net.listRequests[| i];
		
		if (id == req.httpId) {
			reqFind = true;
			break;
		}
	}
	
	
	try {
		body = json_decode(bodyStr);
		
		// If status of less than 0 - throw exception.
		if (status < 0) {
			throw ("Http response has a error [status of less than 0].");
		}
			
		// First of all - try to parse Error
		if (body.error != undefined)
			throw ("Http response has a error [response has a error].");
			
		// Now, try to process Response
		req.Callback(body);
		
	} catch(exception) {
		// TODO: пока просто показываю сообщение об ошибке
		// Позже нужно добавить обработку
		show_message_async(exception);
	} finally {
		// Remove request from listRequests
		if (reqFind)
			ds_list_delete(net.listRequests, i);
	}
}