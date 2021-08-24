/// @desc
draw_self();

if(animating){
	if(sprite_index != sPlayerTransition){
		sprite_index = sPlayerTransition;
		image_speed = 1;
	}
	
	if(sprite_index == sPlayerTransition && image_index >= image_number){
		animating = false;
		image_speed = 0;
		image_index = 0;
		sprite_index = sPlayerTank_normal;
	}
}