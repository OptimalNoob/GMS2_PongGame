/// @desc

if(place_meeting(x + 1, y, oInvader)){
	for(i = 0; i < ds_list_size(Mothership.invaders); i++){
		if(instance_exists(Mothership)){
			if(ds_exists(Mothership.invaders, ds_type_list)){
				if(instance_exists(Mothership.invaders[| i])){
					Mothership.invaders[| i].x += (Mothership.invSpd * Mothership.invaderState);	
				}
			}	
		}
	}
	Mothership.prevState = Mothership.invaderState;
	Mothership.invaderState = invState.DOWN;
	Mothership.alarm[0] = 16;
}