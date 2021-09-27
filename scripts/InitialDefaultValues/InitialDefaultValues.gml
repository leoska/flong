// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitialDefaultValues() {
	var defaultValues = ds_map_create();
	
	ds_map_add(defaultValues, "player_default_x", 147);
	ds_map_add(defaultValues, "player_default_y", 169);
	ds_map_add(defaultValues, "player_default_speed", 14);
	
	global.defaultValues = defaultValues;
}