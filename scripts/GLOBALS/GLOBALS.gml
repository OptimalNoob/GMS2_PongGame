#macro MARGINS 32

/// @function build_globals
/// @desc initiate global variables
function build_globals(){
	globalvar playerScore; playerScore = 0;
	globalvar playerStage; playerStage = 0;
	
	globalvar playerX;	playerX = (MARGINS + 400) / 2;
	globalvar playerY;	playerY = 640;
	
	globalvar chaosFactor; chaosFactor = 1;
}