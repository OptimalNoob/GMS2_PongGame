/// @desc
PlayerScore += brick_score;

if(irandom(100) < powerupChance){
	instance_create_depth(x, y + 10, -20, oPowerupBreakout);	
}