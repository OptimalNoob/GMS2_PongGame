moveSpeed = 4;
animating = false;
done_animating = false;
image_speed = 0;

currentPowerups = ds_list_create();
ds_list_add(currentPowerups, false, false, false, false);

playerSpriteLib = ds_grid_create(3, 2);
playerSpriteLib[# 0, 0] = sPlayerPaddle_normal;
playerSpriteLib[# 1, 0] = sPlayerPaddle_narrow;
playerSpriteLib[# 2, 0] = sPlayerPaddle_wide;
playerSpriteLib[# 0, 1] = sPlayerTank_normal;
playerSpriteLib[# 1, 1] = sPlayerTank_narrow;
playerSpriteLib[# 2, 1] = sPlayerTank_wide;

if(PlayerType == PTYPE.TANK && sprite_index != sPlayerTank_normal) animating = true;