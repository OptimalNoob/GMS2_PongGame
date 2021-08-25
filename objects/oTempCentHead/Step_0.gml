/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch(state){
	case centipedeState.left:
		if(place_meeting(x-moveSpeed, y, oTempCentBound)){
			state = centipedeState.down;
			destinationY = y + 32;
			prevState = centipedeState.left;
		}else{
			x -= moveSpeed;	
		}
	
	break;
	case centipedeState.right:
		if(place_meeting(x+moveSpeed, y, oTempCentBound)){
			state = centipedeState.down;
			destinationY = y + 32;
			prevState = centipedeState.right;
		}else{
			x += moveSpeed;	
		}
	break;
	case centipedeState.down:
	if(y > destinationY){
			if(prevState == centipedeState.left){
				state = centipedeState.right;
			}else{
				state = centipedeState.left;	
			}
	}else{
		y += moveSpeed;	
	}
	break;
}