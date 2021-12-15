// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HttpRequestRegister(login, password) : BaseHttpRequest() constructor {
	_method = httpMethod.POST;
	params = {
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