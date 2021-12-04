/// @description Wrapper for send HTTP requests
///
/// @function					SendHttpRequest(request)
/// @param {string} request		HTTP-request name

function SendHttpRequest(request){
	try {
		switch(request) {
			case "init":
				return HttpInitRequest();
				
			default:
				throw ("Incorrect request name [" + string(request) + "]");
		}
	} catch(exception) {
		// TODO: пока просто показываю сообщение об ошибке
		// Позже нужно добавить обработку
		show_message(exception);
	}
}