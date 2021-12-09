// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BaseHttpRequest() constructor {
	static url = string(global.networkManager.httpHost);			// Request URL
	static protocol = string(global.networkManager.httpProtocol);	// Protocol (http or https)
	httpId = undefined;												// ID of request
	body = undefined;												// Request body (For POST)
	_method = httpMethod.GET;										// Request's HTTP method
	response = undefined;											// Response
	params = {};
	
	enum httpMethod {
		GET,
		POST,
	};
	
	/// @description	Getter for url
	/// @function		GetApiName()
	static GetApiName = function() {
		throw ("Try to call virtual method.");
	}
	
	/// @description	Function-wrapper for send HTTP-request to Server
	/// @function		Send()
	Send = function() {
		try {
			Process(BuildUrl());
			Log();
		} catch(exception) {
			// TODO: пока просто показываю сообщение об ошибке
			// Позже нужно добавить обработку
			show_debug_message(exception);
		}
	}
	
	/// @description	Start Process send HTTP-request
	/// @function		Process()
	/// @virtual
	Process = function() {
		throw ("Try to call virtual method.");
	}
	
	/// @description	Build request URL with query string (params)
	/// @function		BuildUrl()
	BuildUrl = function() {
		var parameters = ParamsParse();
		var result = protocol + "://" + url + GetApiName();
		if (parameters != "")
			result += parameters;
			
		return result;
	}
	
	/// @description	Parse params struct to query string
	/// @function		ParamsParse()
	ParamsParse = function() {
		var result = "";
		var paramNames = variable_struct_get_names(params);
		var parameter = undefined;
		var paramString = undefined;
		
		for (var i = 0; i < array_length(paramNames); ++i) {
			parameter = paramNames[i];
			paramString = string(parameter) + "=" + string(params[parameter]);
			
			if (result != "")
				result += "&" + paramString
			else
				result = paramString;
		}
		
		return result;
	}
	
	/// @description	Log request to console
	/// @function		Log()
	Log = function() {
		if (global.debug) {
			show_debug_message("[HTTP-Request] (" + string(reqStats.httpId) + "#) " + reqStats.url + "\n" + string(reqStats.body));
		}
	}
}