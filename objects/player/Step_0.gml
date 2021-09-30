/// @description Insert description here
// You can write your code in this editor

var vertical_vector = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var dt_ratio = delta_time / ideal_delta_time;

// TODO: разобраться
y += vertical_vector * (playerSpeed * dt_ratio);

if (y < player_yLimit_min)
	y = player_yLimit_min;
	
if (y > player_yLimit_max)
	y = player_yLimit_max;