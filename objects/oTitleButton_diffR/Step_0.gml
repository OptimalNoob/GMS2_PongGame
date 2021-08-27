/// @desc

if(instance_exists(TitleController)){
	if(mouse_x > bbox_left && mouse_x < bbox_right
		&& mouse_y > bbox_top && mouse_y < bbox_bottom){
	
		if(mouse_check_button_pressed(mb_left)){
			if(TitleController.selected_perma != true) audio_play_sound(sndNav02, 1, false);
			TitleController.selected_perma = true;
		}
	}
}