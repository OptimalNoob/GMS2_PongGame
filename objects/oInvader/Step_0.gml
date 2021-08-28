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
	if(place_meeting(x, y, oPlayer)){
		instance_destroy();
		oPlayer.player_health -= damage;
	}
}


if(y > room_height + 32 && !anger){
	instance_destroy();	
	PlayerLives--;
	if(PlayerLives<=0){
		game_over();	
	}
}