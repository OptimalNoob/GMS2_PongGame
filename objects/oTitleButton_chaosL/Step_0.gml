/// @desc

if(instance_exists(TitleController)){
	if(mouse_x > bbox_left && mouse_x < bbox_right
		&& mouse_y > bbox_top && mouse_y < bbox_bottom){
			
		if(mouse_check_button_pressed(mb_left)){
			if(TitleController.selected_chaos != 1) audio_play_sound(sndNav01, 1, false);
			TitleController.selected_chaos = max(TitleController.chaos_range[0], --TitleController.selected_chaos);
		}
	}
}