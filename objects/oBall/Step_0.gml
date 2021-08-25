/// @desc
if(!PAUSED){
	
y += vSpd;
x += hSpd;

if(PlayerStages[| STAGE.PONG]){
	//TODO MOVE ALL COLLISION CODE INTO THE PLAYER, BRICKS, INVADERS, etc.
	if(place_meeting(x, y, oPlayer)){
		var calcAngle = (x - oPlayer.x) / 5;
		
		vSpd = -vSpd;
		hSpd = calcAngle;
		y -= 2;
	}

	if(place_meeting(x, y, oEnemyPaddle) && vSpd < 0){
		var calcAngle = (x - oEnemyPaddle.x) / 5;
		
		vSpd = -vSpd;
		hSpd = calcAngle;
		oEnemyPaddle.new_speed(difficulty);
		oEnemyPaddle.xPosModify = random_range(oEnemyPaddle.xPosModifyMin, oEnemyPaddle.xPosModifyMax);
		y += 2;
	}
	
	/// Keep ball inside play area
	/// TODO: Set ball X position at least 1 pixel away from wall on either side
	///		 to avoid ball getting stuck inside walls
	if((x > MARGINS + PLAYAREA_WIDTH - (sprite_width / 2))
		||(x < MARGINS + (sprite_width / 2))) hSpd = -hSpd;
	
	if(!PlayerStages[| STAGE.BREAKOUT]){
		if (y < oEnemyPaddle.y - 4) {
			reset_ball_position();
			PlayerScore++;
		}
	} else {
		if(y < MARGINS) vSpd = -vSpd;
		if (y < oEnemyPaddle.y - 4) {
			if(hasPongScored == false){
				hasPongScored = true;
				PlayerScore++;
			}
		} else hasPongScored = false;
	}
	
	if(y > room_height + 16) {
		instance_destroy();
		//TODO: Create a Life System, also check to make sure it's the last ball going off screen
		// This is where Gameover might happen
	}
}

if(PlayerStages[| STAGE.BREAKOUT]){
	
	hcol_l = instance_place(x - hSpd, y, Parent_BallCollider);
	hcol_r = instance_place(x + hSpd, y, Parent_BallCollider);
	vcol_t = instance_place(x, y - vSpd, Parent_BallCollider);
	vcol_b = instance_place(x, y + vSpd, Parent_BallCollider);
	
	if(hcol_l != noone){
		if(!PenetratingBalls)	hSpd = -hSpd;
		ball_collision(hcol_l);
	}
	
	if(hcol_r != noone){
		if(!PenetratingBalls)	hSpd = -hSpd;
		ball_collision(hcol_r);
	}
	
	if(vcol_t != noone){
		if(!PenetratingBalls)	vSpd = -vSpd;
		ball_collision(vcol_t);
	}
	
	if(vcol_b != noone){
		if(!PenetratingBalls)	vSpd = -vSpd;
		ball_collision(vcol_b);
	}
}

//brick collision checking



//if(hcol != noone){
//	hSpd = -hSpd;
//	instance_destroy(hcol);
//}

//if(vcol != noone){
//	vSpd = -vSpd;
//	instance_destroy(vcol);
//}
	
//invader collision
//hcol = instance_place(x + hSpd, y, oInvader)
//vcol = instance_place(x, y + vSpd, oInvader)

//if(hcol != noone){
//	if(hcol.anger == false){
//		hcol.anger = true;
//		hSpd = -hSpd;
//		Mothership.remove_invader_from_list(hcol);
//	}
//}
//if(vcol != noone){
//	if(vcol.anger == false){
//		vcol.anger = true;
//		vSpd = -vSpd;
//		Mothership.remove_invader_from_list(vcol);
//	}
//}
// values should be changed to reflect playfield borders




} //END: IF PAUSED


/// @function reset_paddles
/// @desc reset paddle position
function reset_paddles(){
	/*oPlayer.x = (MARGINS + 360 + oPlayer.sprite_width) /2;
	oEnemyPaddle.x = (MARGINS + 360 + oPlayer.sprite_width) /2;*/
}


/// @function ball_collision
/// @desc logic for ball collision
function ball_collision(_id){
	switch(_id.col_type){
		case "brick": 
			// Brick/Ball Collision Logic
			instance_destroy(_id);
		break;
		case "invader":
			// Invader/Ball Collision Logic
			_id.anger = true;
			Mothership.remove_invader_from_list(_id);
		break;
	}
}

/// @function reset_ball_position
/// @desc reset ball to center of play area
function reset_ball_position(){
	var _ball_start_x = 224;
	var _ball_start_y = 352;
	
	x = 224;
	y = 352;
	hSpd = 0;
	vSpd = 0;
	alarm[0] = 120;
}





















