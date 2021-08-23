/// @desc
y += drop_speed;

if(y > room_height + sprite_height){
	instance_destroy();	
}

if(place_meeting(x, y, oPlayer)){
	if(upgrade_choice == 0) triggerMultiBall(5, 1);
	else triggerWidePaddle(30 * 60); //TODO: Paddle can get stuck in wall when picking up
	
	instance_destroy();
}