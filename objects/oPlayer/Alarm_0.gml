/// @desc Reset Sprite Powerups

currentPowerups[| POWERUP.WIDE] = false;
currentPowerups[| POWERUP.NARROW] = false
sprite_index = playerSpriteLib[# 0, PlayerType];
mask_index = sPlayerPaddle_normal;
moveSpeed = 4;

//sprite_index = sPlayer_paddle01;
//moveSpeed = 4;