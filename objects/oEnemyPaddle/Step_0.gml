/// @desc

if(instance_exists(oBall)){
	if(x + xPosModify < oBall.x) x += EnemyPaddleSpeed;
	if(x + xPosModify> oBall.x) x -= EnemyPaddleSpeed;

	if(x > MARGINS + PLAYAREA_WIDTH - (sprite_width / 2)) x = MARGINS + PLAYAREA_WIDTH - (sprite_width / 2);
	if(x < MARGINS + (sprite_width / 2)) x = MARGINS + (sprite_width / 2);
}

/// @function new_speed
/// @desc sets new speed of paddle
function new_speed(_diff){
	EnemyPaddleSpeed = random_range(pspeeds[# 0, _diff], pspeeds[# 1, _diff]);
}

enum PADSPEED {
	EASY, HARD
}