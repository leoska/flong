/// @description Wrapper for send HTTP requests
///
/// @function					SendHttpRequest(request)
/// @param {string} name		HTTP-request name

function SendHttpRequest(name) {
	var request = undefined;
	var net = global.networkManager;
	
	try {
		switch(name) {
			case "init":
				request = new HttpRequestInit();
				break;
				
			default:
				throw ("Incorrect request name [" + string(request) + "]");
		}
		
		if (request)
			request.Send();
			
		ds_list_add(net.listRequests, request);
			
	} catch(exception) {
		// TODO: пока просто показываю сообщение об ошибке
		// Позже нужно добавить обработку
		show_debug_message(exception);
	} 
}