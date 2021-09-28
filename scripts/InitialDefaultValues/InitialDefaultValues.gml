// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitialDefaultValues() {
	var defaultValues = ds_map_create();
	var room_width_center = room_width / 2;
	var room_height_center = room_height / 2;
	
	// Player Default Values
	ds_map_add(defaultValues, "player_default_x", 160);		// Respawn X pos
	ds_map_add(defaultValues, "player_default_y", 560);		// Respawn Y pos
	ds_map_add(defaultValues, "player_default_speed", 14);	// Default after respawn player speed
	ds_map_add(defaultValues, "player_yLimit_min", 224);	// 
	ds_map_add(defaultValues, "player_yLimit_max", 856);	// 
	
	// Balls Default Values
	ds_map_add(defaultValues, "ball_default_x", room_width_center);
	ds_map_add(defaultValues, "ball_default_y", room_height_center);

	
	global.defaultValues = defaultValues;
}