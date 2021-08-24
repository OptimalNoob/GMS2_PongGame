/// @desc

xPosModify = 0;
//hSpdRangeMax = 6;
//hSpdRangeMin = 2;
xPosModifyMin = -20;
xPosModifyMax = 20;
//x = EnemyPaddleX;

depth = -10;

pspeeds = ds_grid_create(2,2);

// Easy Speeds
pspeeds[# 0,0] = 0.5;
pspeeds[# 1,0] = 2;

// Hard Speeds
pspeeds[# 0,1] = 1;
pspeeds[# 1,1] = 4;