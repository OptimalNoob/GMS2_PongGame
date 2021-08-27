/// @desc
if(!PAUSED){

y += vSpd;
x += hSpd;

if(PlayerStages[| STAGE.PONG]){
	//TODO MOVE ALL COLLISION CODE INTO THE PLAYER, BRICKS, INVADERS, etc.
	if(place_meeting(x, y, oPlayer)){
		var calcAngle = (x - oPlayer.x) / 5;
		audio_play_sound(sndNav02, 1, false);
		vSpd = -abs(vSpd);
		hSpd = calcAngle;
		y -= (sprite_get_height(oPlayer.sprite_index) / 2);
	}

	if(place_meeting(x, y, oEnemyPaddle) && vSpd < 0){
		var calcAngle = (x - oEnemyPaddle.x) / 5;
		audio_play_sound(sndNav01, 1, false);
		vSpd = abs(vSpd);
		hSpd = calcAngle;
		oEnemyPaddle.new_speed(difficulty);
		oEnemyPaddle.xPosModify = random_range(oEnemyPaddle.xPosModifyMin, oEnemyPaddle.xPosModifyMax);
		y += 2;
	}
	
	/// Keep ball inside play area
	/// TODO: Set ball X position at least 1 pixel away from wall on either side
	///		 to avoid ball getting stuck inside walls
	if((x > MARGINS + PLAYAREA_WIDTH - (sprite_width / 2))
		||(x < MARGINS + (sprite_width / 2))) {
			hSpd = -hSpd;
			audio_play_sound(choose(sndNav01, sndNav02), 1, false);
		}
	
	if(!PlayerStages[| STAGE.BREAKOUT]){
		if(y > room_height + 16) {
			show_debug_message("Lives Left Before Miss: " + string(PlayerLives));
			if(PlayerLives <= 0){
				game_over();
			}
			var _ball_start_x = 212;
			var _ball_start_y = 352;
			var _ball = instance_create_layer(_ball_start_x, _ball_start_y, "Entities", oBall);
			_ball.alarm[0] = 120;
			instance_destroy();
			PlayerLives--;
			//TODO: Create a Life System, also check to make sure it's the last ball going off screen
			// This is where Gameover might happen
		}
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
		
		if(y > room_height + 16) {
			instance_destroy();
			if(instance_number(oBall) < 1) {
				var _ball_start_x = 212;
				var _ball_start_y = 352;
				var _ball = instance_create_layer(_ball_start_x, _ball_start_y, "Entities", oBall);
				_ball.alarm[0] = 120;
				if(PlayerLives <= 0){
					game_over();
				}
				PlayerLives--;
				oPlayer.player_health = ceil(5 * oPlayer.health_factor);
			}
		}
	}
}





} //END: IF PAUSED

/// @function reset_ball_position
/// @desc reset ball to center of play area
function reset_ball_position(){
	var _ball_start_x = 224;
	var _ball_start_y = 352;
	
	x = _ball_start_x;
	y = _ball_start_y;
	hSpd = 0;
	vSpd = 0;
	alarm[0] = 120;
}





















