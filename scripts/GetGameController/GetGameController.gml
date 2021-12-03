/// @function GetGameController()
function GetGameController() {
	if (!variable_global_exists("gmController"))
		global.gmController = instance_create_layer(0, 0, "Controllers", gameController);
	
	return global.gmController;
}