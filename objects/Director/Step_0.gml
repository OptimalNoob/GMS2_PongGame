/// @desc

switch playerStage {
	case pStage.pong: // Pong
		if(pointTo == 1){
			playerScore++;
			if(playerScore < 7) oBallPong.reset_paddles();
			pointTo = 0;
		} else if (pointTo == -1) {
			enemyScore++;
			oBallPong.reset_paddles();
			pointTo = 0;
		}
	
		if (playerScore >= 7) {
			playerStage = pStage.breakout;
			playerX = oPlayer.x;
			playerY = oPlayer.y;
			room_goto(rmBreakout);
		}
		break;
	case pStage.breakout: // Breakout
		
		break;
	default: break;
}

if(keyboard_check_pressed(ord("O"))) playerScore++;