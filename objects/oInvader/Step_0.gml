/// @desc

//needs a rewrite for collision on player, not coord based
//if(y >= room_height + 128 && !anger) game_restart();

//This is the code governing angery mode >:C
if(anger && !triggered){
	triggered = true;
	ySpeed = -6;
}

if(anger){
	y += ySpeed;
	ySpeed += yGrav;
	move_towards_point(oPlayer.x, oPlayer.y, 2);
}


if(y > room_height + 32){
	//This could be a different effect, but is just a deletion for now
	instance_destroy();	
}