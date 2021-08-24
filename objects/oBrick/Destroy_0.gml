/// @desc
PlayerScore += brick_score;

if(irandom(100) < powerupChance){
	instance_create_depth(x, room_height / 2 - 64, -20, oPowerupBreakout);	
}