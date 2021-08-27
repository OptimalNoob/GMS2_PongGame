/// @desc
if(room != rmGameOver){

	if(room != PreviousRoom){
		PreviousRoom = room;
		DirectorInit = true;
		ContinueGameRoom = room;
	}

	if(DirectorInit){
		DirectorInit = false;
		spawn_player();
		if(PlayerStages[| STAGE.PONG]) director_enable_pong();
		if(PlayerStages[| STAGE.BREAKOUT]) director_enable_breakout();
		if(PlayerStages[| STAGE.INVADERS]) director_enable_invaders();
		if(PlayerStages[| STAGE.CENT]) director_enable_centipede();
	}
}

if(room == rmPong){
	alpha_pong = 1;
}

if(room == rmBreakout && alpha_breakout < 1){
	alpha_pong = max(0,alpha_pong - 0.05);
	alpha_breakout = min(1, alpha_breakout + 0.05);
}

if(room == rmInvaders && alpha_invaders < 1){
	alpha_pong = 0;
	alpha_breakout = max(0, alpha_breakout - 0.05);
	alpha_invaders = min(1, alpha_invaders + 0.05);
}

if(instance_exists(oPlayer)){
	index_wide = oPlayer.currentPowerups[| POWERUP.WIDE];
	index_narrow = oPlayer.currentPowerups[| POWERUP.NARROW];
	index_pierce = PenetratingBalls;
	index_spread = oPlayer.currentPowerups[| POWERUP.SPREAD];
	index_speed = oPlayer.currentPowerups[| POWERUP.SWIFT];
}

if(instance_number(oBall) > 1){
	index_multi = 1;
	// Text based on instance_number(oBall);
} else {
	index_multi = 0;
}

if(instance_exists(oPlayerShield)){
	index_shield = 1;
	// Text based on oPlayerShield.life
} else {
	index_shield = 0;
}

// Debug Controls
//if(keyboard_check_pressed(vk_f1)) DebugMode = !DebugMode;
//if(keyboard_check_pressed(ord("O"))) PlayerScore++;
//if(keyboard_check_pressed(ord("R"))) {
//	if(keyboard_check(vk_control)) game_restart();
//	else{
//		DirectorInit = true;
//		Director.initialize_breakout = false;
//		room_restart();
//	}
//}

//if(keyboard_check_pressed(ord("P"))) instance_destroy(oBrick);
//if(keyboard_check_pressed(ord("H"))){
//	if(instance_exists(oPlayerShield)) oPlayerShield.life--;	
//}

