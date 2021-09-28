/// @description Insert description here
// You can write your code in this editor

var vertical_vector = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var dt_ratio = delta_time / ideal_delta_time;

// TODO: разобраться
phy_position_y += vertical_vector * (player_speed * dt_ratio);

if ((phy_position_y < player_yLimit_min) || (phy_position_y > player_yLimit_max))
	phy_position_y = yprevious;
