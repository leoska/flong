/// @description Insert description here
// You can write your code in this editor

player_speed = 4;

if (variable_global_exists("defaultValues")) {
	player_speed = global.defaultValues[? "player_default_speed"];
}

ideal_delta_time = 1 / room_speed * 1000000;