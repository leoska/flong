// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BaseHttpRequest() constructor {
	static protocol = string(global.networkManager.httpProtocol);	// Protocol (http or https)
	url = "";														// Request URL
	httpId = undefined;												// ID of request
	body = undefined;												// Request body (For POST)
	_method = httpMethod.GET;										// Request's HTTP method
	response = undefined;											// Response
	params = {};
	timeSend = 0;
	timeReceived = 0;
	
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
			BuildUrl();
			httpId = Process();
			timeSend = current_time;
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
	
	
	/// @description	Process of server's response
	/// @function		Response(data)
	/// @param {Struct} data - data from server
	/// @virtual
	Response = function(data) {
		throw ("Try to call virtual method.");
	}
	
	
	/// @description	Answer from server
	/// @function		Callback(data)
	/// @param {Struct} data - data from server
	Callback = function(data) {
		timeReceived = current_time;
		try {
			Response(data);
		} catch(exception) {
			// TODO: пока просто показываю сообщение об ошибке
			// Позже нужно добавить обработку
			show_debug_message(exception);
		}
	}
	
	
	/// @description	Build request URL with query string (params)
	/// @function		BuildUrl()
	BuildUrl = function() {
		var parameters = ParamsParse();
		var result = protocol + "://" + string(global.networkManager.httpHost) + GetApiName();
		if (parameters != "")
			result += "?" + parameters;
			
		url = result;
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
			paramString = string(parameter) + "=" + string(variable_struct_get(params, parameter));
			
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
			show_debug_message("[HTTP-Request] (" + string(httpId) + "#) " + url + "\n" + string(body));
		}
	}
}