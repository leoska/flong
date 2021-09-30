/// @description Insert description here
// You can write your code in this editor

ballStartSpeed = 7;
ballMove = false;

if (variable_global_exists("defaultValues")) {
	ballStartSpeed = global.defaultValues[? "ball_start_speed"];
}