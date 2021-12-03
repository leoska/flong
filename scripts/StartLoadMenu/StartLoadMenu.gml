/// @description Loading game intro
///
/// @function StartLoadMenu()

function StartLoadMenu(){
	GetGameController();
	
	// Create network manager
	global.networkManager = instance_create_layer(0, 0, "Controllers", networkManager);

	// Send Init Request
	HttpInitRequest();
}