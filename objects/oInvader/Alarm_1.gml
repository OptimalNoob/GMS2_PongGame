/// @desc
var _firechance = math_map_int(ChaosFactor, 1, 10, 10, 3);
var _chance = irandom(_firechance);
if(_chance < 1){
	audio_play_sound(sndBullet01, 1, false);
	instance_create_depth(x, y, depth, oEnemyBullet01);
}

alarm[1] = irandom_range(2, 4) * 60;