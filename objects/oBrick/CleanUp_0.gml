/// @desc
if(irandom(100) < baseSpawnChance){
	var upgrade_choice = choose(oPowerupMulti, oPowerupWide);
	instance_create_depth(x, y, depth, upgrade_choice);	
}