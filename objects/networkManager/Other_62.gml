/// @description Insert description here
// You can write your code in this editor

var requestAnswer = ds_map_find_value(async_load, "id");
var requestStatus = ds_map_find_value(async_load, "status");
var requestBody = ds_map_find_value(async_load, "result");
var requestUrl = ds_map_find_value(async_load, "url");
var requestHttpStatus = ds_map_find_value(async_load, "http_status");

ParseHttpResponse(requestAnswer, requestStatus, requestBody, requestUrl, requestHttpStatus);