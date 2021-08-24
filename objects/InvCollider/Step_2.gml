/// @desc

if(place_meeting(x + 1, y, oInvader)){
	for(i = 0; i < Mothership.invader_count; i++){
		if(instance_exists(Mothership.invaders[| i])){
			Mothership.invaders[| i].x += (Mothership.invSpd * Mothership.invaderState);	
		}
	}
	Mothership.prevState = Mothership.invaderState;
	Mothership.invaderState = invState.DOWN;
	Mothership.alarm[0] = 16;
}