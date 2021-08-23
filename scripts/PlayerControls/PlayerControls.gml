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