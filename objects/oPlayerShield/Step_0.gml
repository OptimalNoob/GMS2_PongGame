/// @desc

image_index = math_map_int(life, 1, max_life, image_number - 1, 0);

x = oPlayer.x;
y = oPlayer.y - 24;

if(life < 1){
	instance_destroy();
	//show_debug_message("shields down i repeat shields down");
}