/// @description Insert description here
// You can write your code in this editor
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