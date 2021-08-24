/// @desc

startingIndex = image_index - (image_index mod 2);
if(image_index == startingIndex){
	image_index++;	
}else{
	image_index--;	
}

alarm[0] = 60;