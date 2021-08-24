/// @desc


depth = -10;

if (instance_exists(oEnemyPaddle)){

	y += vSpd;
	x += hSpd;

	if(place_meeting(x, y, current_player)){
		vSpd = -vSpd;
		var calcAngle = (oBallPong.x - current_player.x) / 5;
		hSpd = calcAngle;
		y--;
	}

	if(place_meeting(x,y, oEnemyPaddle)){
		vSpd = -vSpd;
		var calcAngle = (oBallPong.x - oEnemyPaddle.x) / 5;
		hSpd = calcAngle;
		oEnemyPaddle.vSpd = random_range(oEnemyPaddle.hSpdRangeMin, oEnemyPaddle.hSpdRangeMax);
		oEnemyPaddle.xPosModify = random_range(oEnemyPaddle.xPosModifyMin,oEnemyPaddle.xPosModifyMax);
		y++;
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
		x = (MARGINS + 360 + current_player.sprite_width) / 2;
		y = room_height / 2;
		hSpd = 0;
		vSpd = 4;
		Director.pointTo = -1;
	}

	if (y < oEnemyPaddle.y - 8) {
		// score for player	
		x = (MARGINS + 360 + current_player.sprite_width) / 2;
		y = room_height / 2;
		hSpd = 0;
		vSpd = -4;
		Director.pointTo = 1;
	}
} else {
	instance_destroy();	
}

function reset_paddles(){
	/*oPlayer.x = (MARGINS + 360 + oPlayer.sprite_width) /2;
	oEnemyPaddle.x = (MARGINS + 360 + oPlayer.sprite_width) /2;*/
}