/// @function powerup_trigger_multiball
/// @arg _balls {int} number of balls to create
/// @arg _spread {real} horizontal spread
/// @desc Clones the ball upon pickup
function powerup_trigger_multiball(_balls, _spread){
	var angleStep = _spread / _balls * 2;
	var adj = _spread / _balls;
	
	for(i = 0; i < _balls; i++){
		var ball = instance_create_depth(x, y - 16, depth, oBall)	
		ball.hSpd = _spread - (i * angleStep) - adj;
		ball.vSpd = -(random(2) + 3);
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
		oPlayer.moveSpeed = 4;
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
		oPlayer.moveSpeed = 6;
	}
}

function powerup_trigger_penetration(_duration){
	PenetratingBalls = true;
	Director.alarm[0] = _duration;
}

/********************************************************************************/


function powerup_trigger_shield(_duration){
	if(instance_exists(oPlayerShield)){
		oPlayerShield.life = 10;	
	}else{
		instance_create_depth(oPlayer.x, oPlayer.y, oPlayer.depth - 1, oPlayerShield);	
	}
}

function powerup_trigger_spread(_duration){
	currentPowerups[| POWERUP.SPREAD] = true;
	oPlayer.alarm[1] = _duration;
}

function powerup_trigger_swift(_duration){
	currentPowerups[| POWERUP.SWIFT] = true;
	oPlayer.alarm[2] = _duration;
}
