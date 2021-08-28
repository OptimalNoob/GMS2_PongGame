/// @desc
if(instance_exists(oPlayerShield)){
	if(place_meeting(x, y, oPlayerShield)){
		oPlayerShield.life--;
		instance_destroy();
	}
	
	if(place_meeting(x, y, oPlayer)){
		oPlayerShield.life--;
		instance_destroy();
	}
} else {
	if(place_meeting(x, y, oPlayer)){
		oPlayer.player_health--;
		instance_destroy();
	}
}

if(y < 64 || y > room_height + 64) instance_destroy();

