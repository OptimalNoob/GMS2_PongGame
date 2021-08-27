/// @function player_control_movement
/// @desc enable movement controls for player
function player_control_movement(){
	keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
	keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
	movX = keyRight - keyLeft;
	if(currentPowerups[| POWERUP.SWIFT] == false){
		x += movX * moveSpeed;
	} else{
		x += movX * moveSpeed * 1.5;
	}
}

/// @function player_control_shooting
/// @desc enable weapon controls for player
function player_control_shooting(){
	keyShoot = keyboard_check_pressed(vk_space);
	if(keyShoot) {
		audio_play_sound(sndBullet02, 1, false);
		if(currentPowerups[| POWERUP.SPREAD] == false) {
			instance_create_depth(x, y - sprite_height, depth, oBullet01);
		}else{
				for(i=0;i<3;i++){
					var bulAngle = 10;
					var tempBul = instance_create_depth(x, y - sprite_height, depth, oBullet01);
					tempBul.direction = 90 + bulAngle * (i - 1);
				}
			}
		}
}