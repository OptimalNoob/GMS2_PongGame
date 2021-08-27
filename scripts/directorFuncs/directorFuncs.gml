/// @function spawn_player
/// @desc creates player object
function spawn_player(){
	if(!instance_exists(oPlayer)) instance_create_layer(PSPAWNX, PSPAWNY, "Controllers", oPlayer);	
}

/// @function director_enable_pong
/// @desc enable pong controller on stage creation
function director_enable_pong(){
	if(!instance_exists(oSpawner_Pong)) instance_create_layer(0, 0, "Controllers", oSpawner_Pong);
}

/// @function director_enable_breakout
/// @desc enable breakout controller on stage creation
function director_enable_breakout(){
	if(!instance_exists(oSpawner_Brick)) instance_create_layer(0, 0, "Controllers", oSpawner_Brick);
}

/// @function director_enable_invaders
/// @desc enable invader controller on stage creation
function director_enable_invaders(){
	instance_create_layer(0, 0, "Controllers", oSpawner_Invader);
}

/// @function director_enable_centipede
/// @desc enable centipede controller on stage creation
function director_enable_centipede(){
	//instance_create_layer(0, 0, "Controllers", oPongSpawner);
}

/// @function director_control_pong
/// @desc enable pong logic in director
function director_control_pong(){
	if(PlayerStages[| STAGE.BREAKOUT] == false){
		if(PlayerScore >= 7){
			ContinueGameRoom = rmBreakout;
			PlayerStages[| STAGE.BREAKOUT] = true;
			PlayerX = oPlayer.x;
			PlayerY = 640
			room_goto(rmBreakout);
		}
	}
}

/// @function director_control_breakout
/// @desc enable pong logic in director
function director_control_breakout(){
	if(PlayerStages[| STAGE.INVADERS] == false){
		ContinueGameRoom = rmInvaders;
		if(instance_number(oBrick) == 0 && initialize_breakout){
			PlayerStages[| STAGE.INVADERS] = true;
			PlayerType = PTYPE.TANK;
			room_goto(rmInvaders);
			alarm[1] = -1;
		}
	}
}

/// @function director_control_invaders
/// @desc enable pong logic in director
function director_control_invaders(){
	
	if((instance_number(oBrick) == 0 && !instance_exists(oSpawner_Brick)) && alarm[1] == -1){
		alarm[1] = brick_timeout;
	}
	
	if(instance_number(oInvader) == 0 && alarm[2] == -1){
		alarm[2] = invader_timeout;
	}
}