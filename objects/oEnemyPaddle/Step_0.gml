/// @desc

if(instance_exists(oBallPong)){
	//if(oBallPong.vSpd < 0){
		if(x + xPosModify < oBallPong.x){
			x+= moveSpeed;
		}
		if(x + xPosModify> oBallPong.x){
			x-= moveSpeed;
		}
	//}

	if(x > 32 + 360 - sprite_width / 2){
		x = 32 + 360 - sprite_width / 2;
	}

	if(x < 32 + sprite_width / 2){
		x = 32 + sprite_width / 2;	
	}
}