/// @description Insert description here
// You can write your code in this editor
global.gmController = self;

InitialDefaultValues();

enum gameState {
   intro,
   menu,
   match
};

// Init Controller Values
state = gameState.match;

StartPlayMatch();

// Create network manager
global.networkManager = instance_create_depth(0, 0, 0, networkManager);