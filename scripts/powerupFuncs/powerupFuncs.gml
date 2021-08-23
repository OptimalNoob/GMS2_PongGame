// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function triggerMultiBall(_balls, _maxXSeparation){
	var angleStep = _maxXSeparation / _balls * 2
	var tempID;
	
	for(i=0; i<_balls; i++){
	tempID = instance_create_depth(x, y - 10, depth, oBallBreakout)	
		tempID.hSpd = _maxXSeparation - (i * angleStep);
		tempID.vSpd = -tempID.vSpd;
	}
	
}