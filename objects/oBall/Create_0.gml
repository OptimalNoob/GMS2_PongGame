/// @desc Ball Init
hSpd = 0;
vSpd = 0;
depth = -10;
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