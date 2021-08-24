/// @function player_control_movement
/// @desc enable movement controls for player
function player_control_movement(){
	keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
	keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
	movX = keyRight - keyLeft;
	x += movX * moveSpeed;
}

/// @function player_control_shooting
/// @desc enable weapon controls for player
function player_control_shooting(){
	keyShoot = keyboard_check_pressed(vk_space);
	if(keyShoot) instance_create_depth(x, y - sprite_height, depth, oBullet01)
}