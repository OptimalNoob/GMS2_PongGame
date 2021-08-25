/// @desc
draw_self();
if(hasPongScored == true){
	image_blend = c_aqua;
} else{
	image_blend = c_white;	
}

if(Director.alarm[0] != -1 && (Director.alarm[0] mod 5 == 1 || Director.alarm[0] mod 4 == 1)){
	image_blend = c_red	
}