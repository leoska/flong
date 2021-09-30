/// @description Insert description here
// You can write your code in this editor

playerSpeed = 4;
player_yLimit_min = 192;
player_yLimit_max = 888;

if (variable_global_exists("defaultValues")) {
	playerSpeed = global.defaultValues[? "player_default_speed"];
	player_yLimit_min = global.defaultValues[? "player_yLimit_min"];
	player_yLimit_max = global.defaultValues[? "player_yLimit_max"];
}

// Time.deltaTime from unity 3d
ideal_delta_time = 1 / room_speed * 1000000;