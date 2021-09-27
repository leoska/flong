/// @description Insert description here
// You can write your code in this editor

var vertical_vector = keyboard_check(ord("S")) - keyboard_check(ord("W"))

y += vertical_vector * (player_speed * (delta_time / ideal_delta_time));

previous_delta_time = delta_time;