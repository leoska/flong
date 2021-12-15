/// @description Send INIT (GET) request on server
///
/// @function HttpInitRequest()

function HttpRequestInit() : BaseHttpRequest() constructor {
	_method = httpMethod.GET;
	params = {
		version: global.version,
		platform: global.platform,
	};
	
	/// @description	Getter for url
	/// @function		GetApiName()
	static GetApiName = function() {
		return "init";
	}
	
	/// @description	Start Process send HTTP-request
	/// @function		Process()
	/// @override
	Process = function() {	
		return http_get(url);
	}
	
	/// @description	Process of server's response
	/// @function		Response(data)
	/// @param {ds_map} data - data from server
	/// @override
	Response = function(data) {
		show_debug_message(string(data));
	}
}