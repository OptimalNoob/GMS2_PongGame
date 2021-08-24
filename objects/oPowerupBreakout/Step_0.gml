/// @desc
y += drop_speed;

show_debug_message(upgrade_choice);

if(y > room_height + sprite_height){
	instance_destroy();	
}

//if(place_meeting(x, y, current_player)){
//	if(upgrade_choice == 0) triggerMultiBall(5, 1);
//	else triggerWidePaddle(30 * 60); //TODO: Paddle can get stuck in wall when picking up
	
//	instance_destroy();
//}