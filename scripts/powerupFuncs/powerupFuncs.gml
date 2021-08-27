// ---------- INVADERS ---------- //

/// @function powerup_trigger_multiball
/// @arg _balls {int} number of balls to create
/// @arg _spread {real} horizontal spread
/// @desc Clones the ball upon pickup
function powerup_trigger_multiball(_balls, _spread){
	var angleStep = _spread / _balls * 2;
	var adj = _spread / _balls;
	
	for(i = 0; i < _balls; i++){
		var ball = instance_create_depth(x, y - 16, depth, oBall)	
		var _speed_out = math_map_int(ChaosFactor, 1, 10, 2, 11); 
		
		ball.hSpd = _spread - (i * angleStep) - adj;
		ball.vSpd = -(random(_speed_out) + 3);
	}
}

/// @function powerup_trigger_wide
/// @arg _duration {int} duration of powerup effect, in frames
/// @desc wide boi
function powerup_trigger_wide(_duration){
	if(instance_exists(oPlayer)){
		oPlayer.currentPowerups[| POWERUP.NARROW] = false;
		oPlayer.currentPowerups[| POWERUP.WIDE] = true;
		oPlayer.alarm[0] = _duration;
		oPlayer.moveSpeed = oPlayer.wide_speed;
	}
}

/// @function powerup_trigger_narrow
/// @arg _duration {int} duration of powerup effect, in frames
/// @desc smol boi
function powerup_trigger_narrow(_duration){
	if(instance_exists(oPlayer)){
		oPlayer.currentPowerups[| POWERUP.WIDE] = false;
		oPlayer.currentPowerups[| POWERUP.NARROW] = true;
		oPlayer.alarm[0] = _duration;
		oPlayer.moveSpeed = oPlayer.narrow_speed;
	}
}

function powerup_trigger_penetration(_duration){
	PenetratingBalls = true;
	Director.alarm[0] = _duration;
}

// ---------- INVADERS ---------- //

/// @function powerup_trigger_shield
/// @arg _life {int} number of hits the shield can take
/// @desc enables/resets player shield
function powerup_trigger_shield(_life){
	if(instance_exists(oPlayerShield)){
		oPlayerShield.life = _life;	
	}else{
		var _shield = instance_create_depth(oPlayer.x, oPlayer.y, oPlayer.depth - 1, oPlayerShield);	
		_shield.life = _life;
		_shield.max_life = _life;
	}
}

/// @function powerup_trigger_spread
/// @arg _duration {int} length of time (in frames) the spreadshot is active
/// @desc enables spreadshot weapon for tank
function powerup_trigger_spread(_duration){
	currentPowerups[| POWERUP.SPREAD] = true;
	oPlayer.alarm[1] = _duration;
}

/// @function powerup_trigger_swift
/// @arg _duration {int} length of time (in frames) the speedboost is active
/// @desc enables speedboost powerup
function powerup_trigger_swift(_duration){
	currentPowerups[| POWERUP.SWIFT] = true;
	oPlayer.alarm[2] = _duration;
}
