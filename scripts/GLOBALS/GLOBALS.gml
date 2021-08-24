#macro MARGINS 32

/// @function build_globals
/// @desc initiate global variables
function build_globals(){
	globalvar playerScore; playerScore = 0;
	globalvar playerHighScore; playerHighScore = 0;
	globalvar current_player; current_player = oPlayer;
	
	globalvar playerStage; playerStage = 0;
	
	globalvar playerX;	playerX = (MARGINS + 400) / 2;
	globalvar playerY;	playerY = 640;
	
	globalvar enemyPaddleX; enemyPaddleX = 224;
	globalvar enemyPaddleY; enemyPaddleY = 96
	
	globalvar chaosFactor; chaosFactor = 1;
}