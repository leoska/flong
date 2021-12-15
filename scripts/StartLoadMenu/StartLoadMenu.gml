/// @description Load game intro
///
/// @function StartLoadMenu()

function StartLoadMenu(){
	GetGameController();
	
	// Create GUI controller
	global.guiController = instance_create_layer(0, 0, "Controllers", guiController);
	
	// Create network manager
	global.networkManager = instance_create_layer(0, 0, "Controllers", networkManager);
	
	// Create menu object
	global.menuController = instance_create_layer(0, 0, "Controllers", o_menu);

	// Send Init Request
	SendHttpRequest("init");
	
	// TODO: Добавить обработку некорректной версии игры
	// TODO: Добавить докачку файлов (игровое обновление)
	
	// Загружаем меню
	global.gmController.setStateMenu();
	
}