// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetBaseHeaders(contentSize){
	var headers = ds_map_create();
	
	ds_map_add(headers, "Accept", "*/*");

	if (contentSize) {
		ds_map_add(headers, "Content-Type", "application/json; charset=utf-8");
		ds_map_add(headers, "Content-Length", contentSize);
	}
	
	// TODO: Эти заголовки браузер считает не безопасными
	// Пока оставляем закомменчеными
	//ds_map_add(headers, "Connection", "keep-alive");
	//ds_map_add(headers, "Accept-Encoding", "gzip, deflate, br");
	//ds_map_add(headers, "Host", global.networkManager.host);
	//ds_map_add(headers, "User-Agent", "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36");
		
	return headers;
}