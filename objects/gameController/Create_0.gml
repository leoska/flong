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