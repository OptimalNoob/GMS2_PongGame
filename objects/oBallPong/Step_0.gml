/// @desc

if (playerStage = pStage.pong) {

	y += vSpd;
	x += hSpd;

	if(place_meeting(x, y, oPlayer)){
		vSpd = -vSpd;
		var calcAngle = (oBallPong.x - oPlayer.x) / 5;
		hSpd = calcAngle;
	}

	if(place_meeting(x,y, oEnemyPaddle)){
		vSpd = -vSpd;
		var calcAngle = (oBallPong.x - oEnemyPaddle.x) / 5;
		hSpd = calcAngle;
		oEnemyPaddle.vSpd = random_range(oEnemyPaddle.hSpdRangeMin, oEnemyPaddle.hSpdRangeMax);
		oEnemyPaddle.xPosModify = random_range(oEnemyPaddle.xPosModifyMin,oEnemyPaddle.xPosModifyMax);
	}


	// values should be changed to reflect playfield borders
	if (x > MARGINS + 360 - sprite_width / 2) {
		hSpd = -hSpd;
	}
	if (x < MARGINS + sprite_width / 2) {
		hSpd = -hSpd;	
	}

	if (y > room_height) {
		// score for ai
		x = (32 + 360 + oPlayer.sprite_width) / 2;
		y = room_height / 2;
		hSpd = 0;
		vSpd = 4;
		Director.pointTo = -1;
	}

	if (y < 0) {
		// score for player	
		x = (MARGINS + 360 + oPlayer.sprite_width) / 2;
		y = room_height / 2;
		hSpd = 0;
		vSpd = 4;
		Director.pointTo = 1;
	}
} else {
	instance_destroy();	
}

function reset_paddles(){
	oPlayer.x = (MARGINS + 360 + oPlayer.sprite_width) /2;
	oEnemyPaddle.x = (MARGINS + 360 + oPlayer.sprite_width) /2;
}