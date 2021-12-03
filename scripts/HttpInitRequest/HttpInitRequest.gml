/// @description Send INIT (GET) request on server
///
/// @function HttpInitRequest()

function HttpInitRequest() {
	var host = string(global.networkManager.httpHost);
	var protocol = global.networkManager.httpProtocol;
	var params = "version=" + global.version + "&" + "platform=" + global.platform;
	
	var url = protocol + "://" + host + "init?" + params;
	http_get(url);
}