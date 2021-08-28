/// @desc
x += moveSpeed;

if(place_meeting(x, y, oBullet01) || place_meeting(x, y, oBall)){
	PlayerScore += 1000000;
	audio_play_sound(sndPowerup01, 1, false);
	instance_destroy();
}