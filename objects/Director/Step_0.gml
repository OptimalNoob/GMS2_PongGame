/// @desc
if(room != rmGameOver){

	if(room != PreviousRoom){
		PreviousRoom = room;
		DirectorInit = true;
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

// Debug Controls
if(keyboard_check_pressed(vk_f1)) DebugMode = !DebugMode;
if(keyboard_check_pressed(ord("O"))) PlayerScore++;
if(keyboard_check_pressed(ord("R"))) {
	if(keyboard_check(vk_control)) game_restart();
	else{
		DirectorInit = true;
		room_restart();
	}
}
if(keyboard_check_pressed(ord("P"))) instance_destroy(oBrick);
if(keyboard_check_pressed(ord("H"))){
	if(instance_exists(oPlayerShield)) oPlayerShield.life--;	
}


//switch playerStage {
//	case pStage.pong: // Pong
//		if(pointTo == 1){
//			PlayerScore++;
//			if(PlayerScore < 7) oBallPong.reset_paddles();
//			pointTo = 0;
//		} else if (pointTo == -1) {
//			enemyScore++;
//			oBallPong.reset_paddles();
//			pointTo = 0;
//		}
	
//		if (PlayerScore >= 7) {
//			playerStage = pStage.breakout;
//			playerX = oPlayer.x;
//			playerY = oPlayer.y;
//			room_goto(rmBreakout);
//			paddleTarget = oBallCombined;
//			enemyPaddleSpeed = 1;
//			PlayerScore = 100;
//		}
//		break;
//	case pStage.breakout: // Breakout
//		//show_debug_message("On Breakout")
		
//		if(pointTo == 1){
//			PlayerScore+=7;
//			pointTo = 0;
//		} else if (pointTo == -1) {
//			enemyScore++;
//			pointTo = 0;
//			}
		
//		if(!instance_exists(oBrick)){
//			show_debug_message("Last Brick Destroyed")
//			playerStage = pStage.invaders;
//			playerX = oPlayer.x;
//			playerY = oPlayer.y;
//			current_player = oPlayer02;
//			room_goto(rmInvaders);
//		}
//		break;
//	default: break;
//}



//if(playerStage != pStage.pong){
//	if(PlayerScore < 1000) leadingZeros = 4;
//	else if(PlayerScore < 10000 && PlayerScore >= 1000) leadingZeros = 3;
//	else if(PlayerScore < 100000 && PlayerScore >= 10000) leadingZeros = 2;
//	else if(PlayerScore < 1000000 && PlayerScore >= 100000) leadingZeros = 1;
//}

