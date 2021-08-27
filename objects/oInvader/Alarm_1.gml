/// @desc
var _chance = irandom(10);
if(_chance < 1){
	audio_play_sound(sndBullet01, 1, false);
	instance_create_depth(x, y, depth, oEnemyBullet01);
}

alarm[1] = irandom_range(3, 8) * 60;






