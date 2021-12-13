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
		if (global.networkManager.httpRequests.init)
			throw ("HTTP Init request is already called.");
	
		httpId = http_get(url);
		global.networkManager.httpRequests.init = httpId;
		return httpId;
	}
}