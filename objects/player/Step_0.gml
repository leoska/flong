/// @description Insert description here
// You can write your code in this editor

var vertical_vector = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var dt_ratio = delta_time / ideal_delta_time;

y += vertical_vector * (player_speed * dt_ratio);