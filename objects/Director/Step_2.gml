/// @desc

if(room != rmGameOver){
	if(PlayerStages[| STAGE.PONG]) director_control_pong();
	if(PlayerStages[| STAGE.BREAKOUT]) director_control_breakout();
	if(PlayerStages[| STAGE.INVADERS]) director_control_invaders();
	if(PlayerStages[| STAGE.CENT]) director_control_centipede();	
}