/// @description Insert description here
// You can write your code in this editor

player_speed = 4;

if (global.gmController) {
	player_speed = global.gmController.player_default_speed;
}

previous_delta_time = delta_time;
ideal_delta_time = 1 / room_speed * 1000000;