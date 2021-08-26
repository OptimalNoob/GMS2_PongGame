/// @desc Ball Init
hSpd = 0;
vSpd = 0;
depth = -10;

// Related to Chaos Factor
var _min_speed = 4;
var _max_speed = 14;

set_speed = math_map_int(ChaosFactor, 1, 10, _min_speed, _max_speed);
hasPongScored = false;

if(PlayerStages[| STAGE.BREAKOUT]){
	difficulty = PADSPEED.EASY
} else {
	difficulty = PADSPEED.HARD;
}

hcol_l = 0;
hcol_r = 0;
vcol_t = 0;
vcol_b = 0;