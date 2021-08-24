/// @function triggerMultiBall
/// @arg _balls {int} description
/// @arg _maxXSeparation {real} triggerMultiBall
/// @desc multiball!
function triggerMultiBall(_balls, _maxXSeparation){
	var angleStep = _maxXSeparation / _balls * 2;
	var adj = _maxXSeparation / _balls;
	
	for(i = 0; i < _balls; i++){
	var ball = instance_create_depth(x, y - 10, depth, oBallCombined)	
		ball.hSpd = _maxXSeparation - (i * angleStep) - adj;
		ball.vSpd = -ball.vSpd * (random(2) + 1);
	}
}

/// @function triggerWidePaddle
/// @arg _duration {int} how long (in frames) the wide paddle lasts
/// @desc wide boi
function triggerWidePaddle(_duration){
	if(playerStage = pStage.breakout){
		oPlayer.sprite_index = sPlayer_paddle02;
		oPlayer.moveSpeed = 6;
		oPlayer.alarm[0] = _duration;	
	}
}