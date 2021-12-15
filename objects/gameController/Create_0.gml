/// @description Initialize Game Controller

global.version = "0.0.1";
global.versionType = "";
global.platform = "html5";
global.debug = true;

InitialDefaultValues();

enum gameState {
   intro,
   menu,
   match
};

// Init Controller Values
state = gameState.intro;

// Go to menu
setStateMenu = function() {
	state = gameState.menu;
	global.menuController.renderMainMenu();
	//event_user(0);
}