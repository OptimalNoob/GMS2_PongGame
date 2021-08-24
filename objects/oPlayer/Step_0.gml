/// @desc

if(PlayerStages[| STAGE.PONG]) player_control_movement();
if(PlayerStages[| STAGE.INVADERS]) player_control_shooting();

if(x > MARGINS + PLAYAREA_WIDTH - (sprite_width / 2)) x = MARGINS + PLAYAREA_WIDTH - (sprite_width / 2);
if(x < MARGINS + (sprite_width / 2)) x = MARGINS + (sprite_width / 2);

if(!animating){
	if(currentPowerups[| POWERUP.WIDE]){
		sprite_index = playerSpriteLib[# 2, PlayerType];
		mask_index = sPlayerPaddle_wide;
	}

	if(currentPowerups[| POWERUP.NARROW]){
		sprite_index = playerSpriteLib[# 1, PlayerType];
		mask_index = sPlayerPaddle_narrow
	}
}

if(currentPowerups[| POWERUP.SPREAD]){
	// Spread Shot Logic (should probably go in player_control_shooting() )	
}

if(currentPowerups[| POWERUP.SHIELD]){
	// Player Shield Logic	
}

var powerup_col = instance_place(x, y, Parent_Powerups);
if(powerup_col != noone){
	switch(powerup_col.powerup_type){
		case "breakout":
			switch(powerup_col.upgrade_choice){
				case 0: powerup_trigger_multiball(5, 2); break;
				case 1: powerup_trigger_wide(30 * 60); break;
				case 2: powerup_trigger_narrow(15 * 30); break;
			}
		break;
		case "invaders":
			
		break;
		default: break;
	}
	instance_destroy(powerup_col);
}


//if(keyboard_check_pressed(vk_space)){
//	instance_create_depth(x, y - 128, depth, oPowerupBreakout);	
//}













