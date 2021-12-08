// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BaseHttpRequest() constructor {
	url = "";					// Request URL
	httpId = undefined;			// ID of request
	body = undefined;			// Request body
	_method = httpMethod.GET;	// Request's HTTP method
	response = undefined;		// Response
	params = {};
	
	enum httpMethod {
		GET,
		POST,
	};
	
	
	Send = function() {
		try {
			Process();
		} catch(exception) {
			// TODO: пока просто показываю сообщение об ошибке
			// Позже нужно добавить обработку
			show_debug_message(exception);
		}
	}
	
	Process = function() {
		throw ("Try to call virtual method.");
	}
	
	Log = function() {
		if (global.debug) {
		}
	}
}