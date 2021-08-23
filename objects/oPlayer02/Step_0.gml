/// @desc

if(sprite_index == sPlayer_transition01){
	if(image_index >= image_number){
		image_speed = 0;
		sprite_index = sPlayer_tank01;
		image_index = 0;
	}
}

switch(playerStage) {
	case pStage.invaders:
		control_player_invaders();
		break;
	default: break;
}

if(place_meeting(x, y, oInvader)){
	game_restart(); // TODO: Checkpoint System	
}