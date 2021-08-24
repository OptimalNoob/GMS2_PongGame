/// @desc



if(keyboard_check_pressed(vk_space)){
	PreviousRoom = rmTitle;
	PlayerStages[| STAGE.PONG] = true;
	if(!instance_exists(Director)) instance_create_layer(0, 0, "Controllers", Director);
	room_goto(rmPong);
}