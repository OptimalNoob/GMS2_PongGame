/// @desc
invaders = ds_list_create();
invSpd = 0.5;
invaderState = invState.LEFT;
prevState = invaderState;

enum invState{
	LEFT = 1,
	RIGHT = -1,
	DOWN = 0
}

alarm[1] = 60;