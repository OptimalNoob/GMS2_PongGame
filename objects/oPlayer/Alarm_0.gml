/// @desc Reset Powerups Stats

currentPowerups[| POWERUP.WIDE] = false;
currentPowerups[| POWERUP.NARROW] = false
sprite_index = playerSpriteLib[# 0, PlayerType];
mask_index = sPlayerPaddle_normal;
moveSpeed = set_speed;