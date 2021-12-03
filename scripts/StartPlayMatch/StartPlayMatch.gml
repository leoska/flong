/// @description Initialize game room with game objects
///
/// @function StartPlayMatch()

function StartPlayMatch() {
	var pl_xPos = global.defaultValues[? "player_default_x"];
	var pl_yPos = global.defaultValues[? "player_default_y"];
	
	var ball_xPos = global.defaultValues[? "ball_default_x"];
	var ball_yPos = global.defaultValues[? "ball_default_y"];
	
	var pl = instance_create_depth(pl_xPos, pl_yPos, 0, player);
	
	var bl = instance_create_depth(ball_xPos, ball_yPos, 0, ball);
}