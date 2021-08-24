/// @desc


depth = -10;

if (instance_exists(oEnemyPaddle)){

	y += vSpd;
	x += hSpd;

	if(place_meeting(x, y, current_player)){
		vSpd = -vSpd;
		var calcAngle = (x - current_player.x) / 5;
		hSpd = calcAngle;
		y--;
	}

	if(place_meeting(x,y, oEnemyPaddle)){
		vSpd = -vSpd;
		var calcAngle = (x - oEnemyPaddle.x) / 5;
		hSpd = calcAngle;
		oEnemyPaddle.vSpd = random_range(oEnemyPaddle.hSpdRangeMin, oEnemyPaddle.hSpdRangeMax);
		oEnemyPaddle.xPosModify = random_range(oEnemyPaddle.xPosModifyMin,oEnemyPaddle.xPosModifyMax);
		y++;
	}

	//brick collision checking
	var hcol = instance_place(x - hSpd, y, oBrick)
	hcol = instance_place(x + hSpd, y, oBrick)


	var vcol = instance_place(x, y - vSpd, oBrick)
	vcol = instance_place(x, y + vSpd, oBrick)


	if(hcol != noone){
		hSpd = -hSpd;
		instance_destroy(hcol);
	}

	if(vcol != noone){
		vSpd = -vSpd;
		instance_destroy(vcol);
	}
	
	//invader collision
	hcol = instance_place(x + hSpd, y, oInvader)
	vcol = instance_place(x, y + vSpd, oInvader)

	if(hcol != noone){
		if(hcol.anger == false){
			hcol.anger = true;
			hSpd = -hSpd;
			Mothership.remove_invader_from_list(hcol);
		}
	}
	if(vcol != noone){
		if(vcol.anger == false){
			vcol.anger = true;
			vSpd = -vSpd;
			Mothership.remove_invader_from_list(vcol);
		}
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
		hSpd = 0;
		x = (32 + 360 + current_player.sprite_width) / 2
		y = room_height/2
		if(instance_number(oBallCombined)>1){
			instance_destroy();	
		}
		Director.pointTo = -1;
	}
	
	if(y < MARGINS){
		vSpd = -vSpd;	
	}


	if (y < oEnemyPaddle.y - 8) {
		// score for player	
		/*x = (MARGINS + 360 + current_player.sprite_width) / 2;
		y = room_height / 2;
		hSpd = 0;
		vSpd = -4;
		Director.pointTo = 1;*/
		
		if(hasPongScored == false){
			Director.pointTo = 1;
			hasPongScored = true;
			show_debug_message("AAA")
		}
		
	} else {
		hasPongScored = false;
	}
} else {
	instance_destroy();	
}

function reset_paddles(){
	/*oPlayer.x = (MARGINS + 360 + oPlayer.sprite_width) /2;
	oEnemyPaddle.x = (MARGINS + 360 + oPlayer.sprite_width) /2;*/
}