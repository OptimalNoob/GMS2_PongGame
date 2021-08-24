/// @desc
var _chance = irandom(10);
if(_chance < 1){
	instance_create_depth(x, y, depth, oEnemyBullet01);
}

alarm[1] = irandom_range(60, 120);