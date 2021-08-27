
var _min_speed = 4;
var _max_speed = 8;

set_speed = math_map_int(ChaosFactor, 1, 10, _min_speed, _max_speed);
wide_speed = math_map_int(ChaosFactor, 1, 10, _min_speed - 1, _max_speed - 2);
narrow_speed = math_map_int(ChaosFactor, 1, 10, _min_speed + 1, _max_speed + 2);
health_factor = math_map_int(ChaosFactor, 1, 10, 5, 1);
player_health = ceil(5 * health_factor);

moveSpeed = set_speed; // Default 4
animating = false;
done_animating = false;
image_speed = 0;

currentPowerups = ds_list_create();
ds_list_add(currentPowerups, false, false, false, false, false);

playerSpriteLib = ds_grid_create(3, 2);
playerSpriteLib[# 0, 0] = sPlayerPaddle_normal;
playerSpriteLib[# 1, 0] = sPlayerPaddle_narrow;
playerSpriteLib[# 2, 0] = sPlayerPaddle_wide;
playerSpriteLib[# 0, 1] = sPlayerTank_normal;
playerSpriteLib[# 1, 1] = sPlayerTank_narrow;
playerSpriteLib[# 2, 1] = sPlayerTank_wide;

if(PlayerType == PTYPE.TANK && sprite_index != sPlayerTank_normal) animating = true;