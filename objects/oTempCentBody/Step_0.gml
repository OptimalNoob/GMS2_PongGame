/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch(state){
	case centipedeBodyState.left:
	if(leftNeighbor.x < x ){
		x -= moveSpeed;	
	}
	if(place_meeting(x-moveSpeed, y, oTempCentBound)){
		state = centipedeBodyState.down;
		prevState = centipedeBodyState.left;
	}
	
	break;
	case centipedeBodyState.right:
	if(leftNeighbor.x > x ){
		x += moveSpeed;	
	}
	if(place_meeting(x+moveSpeed, y, oTempCentBound)){
		state = centipedeBodyState.down;
		prevState = centipedeBodyState.right;
	}
	
	
	break;
	case centipedeBodyState.down:
	if(leftNeighbor.y > y){
		y+=moveSpeed;
	}else{
		if(prevState==centipedeBodyState.left){
		state = centipedeBodyState.right;	
		}else{
		state = centipedeBodyState.left;
		}
	}
	break;
	
}