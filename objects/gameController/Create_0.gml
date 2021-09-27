/// @description Insert description here
// You can write your code in this editor
global.gmController = self;

enum gameState {
   intro,
   menu,
   match
};

// Init Controller Values
state = gameState.match;
player_start_pos_x = 147;
player_start_pos_y = 169;
player_default_speed = 4;

StartPlayMatch();