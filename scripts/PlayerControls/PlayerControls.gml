/// @function control_player_pong
/// @desc enable controls for pong stage
function control_player_pong(){
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	x += (keyRight - keyLeft) * moveSpeed;

	if(x > 32 + 360 - sprite_width / 2){
		x = 32 + 360 - sprite_width / 2;
	}

	if(x < 32 + sprite_width / 2){
		x = 32 + sprite_width / 2;	
	}
}

/// @function control_player_breakout
/// @desc enable controls for breakout stage
function control_player_breakout(){
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keySpace = keyboard_check_pressed(vk_space);

	x += (keyRight - keyLeft) * moveSpeed;

	if(x > 32 + 360 - sprite_width / 2){
		x = 32 + 360 - sprite_width / 2;
	}

	if(x < 32 + sprite_width / 2){
		x = 32 + sprite_width / 2;	
	}
}

/// @function control_player_invaders
/// @desc enable controls for invaders stage
function control_player_invaders(){
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyShoot = keyboard_check_pressed(vk_space);
	x += (keyRight - keyLeft) * moveSpeed;
	
	if(keyShoot){
		control_player_invaders_shoot();
		
	}
}

/// @function control_player_invaders_shoot
/// @desc enable gun controls for invaders stage
function control_player_invaders_shoot(){
	instance_create_depth(x, y - sprite_height, depth, oBullet01)	
}