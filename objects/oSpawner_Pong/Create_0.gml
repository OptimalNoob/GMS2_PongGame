/// @desc

var _ball_start_x = 212;
var _ball_start_y = 352;

if(PlayerStages[| STAGE.BREAKOUT] == false){
	if(!instance_exists(oEnemyPaddle)) instance_create_layer(EnemyPaddleX, EnemyPaddleY, "Entities", oEnemyPaddle);
} else {
	if(!instance_exists(oEnemyPaddle)) instance_create_layer(EnemyPaddleX, EnemyPaddleY + 96, "Entities", oEnemyPaddle);
}

if(!instance_exists(oBall)) {
	var _ball = instance_create_layer(_ball_start_x, _ball_start_y, "Entities", oBall);
	_ball.alarm[0] = 120;
}

instance_destroy();