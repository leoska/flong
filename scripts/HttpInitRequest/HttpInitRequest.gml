/// @description Send INIT (GET) request on server
///
/// @function HttpInitRequest()

function HttpInitRequest() {
	if (global.networkManager.httpRequests.init)
		throw ("HTTP Init request is already called.");
	
	var host = string(global.networkManager.httpHost);
	var protocol = global.networkManager.httpProtocol;
	var params = "version=" + global.version + "&" + "platfom=" + global.platform;
	
	var url = protocol + "://" + host + "init?" + params;
	global.networkManager.httpRequests.init = http_get(url);
}