/// @description Wrapper for send HTTP requests
///
/// @function					SendHttpRequest(request)
/// @param {string} request		HTTP-request name

function SendHttpRequest(request) {
	var reqStats = undefined;
	try {
		switch(request) {
			case "init":
				reqStats = HttpInitRequest();
				break;
				
			default:
				throw ("Incorrect request name [" + string(request) + "]");
		}
		
		if (global.debug) {
			show_debug_message("[HTTP-Reqeust] (" + string(reqStats.httpId) + "#) " + reqStats.url + "\n" + string(reqStats.body));
		}
	} catch(exception) {
		// TODO: пока просто показываю сообщение об ошибке
		// Позже нужно добавить обработку
		show_message(exception);
	} 
}