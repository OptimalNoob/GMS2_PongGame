/// @desc Spawn Delay
if(curr_row >= 6) {
	show_debug_message("Bricks: Done");
	instance_destroy();
	Director.initialize_breakout = true;
	//show_debug_message("finished laying bricks");
} else {
	var brick = instance_create_layer(s_width / 2 + 32 + (curr_brick * 24), debug_y + 32 + (curr_row * 14) + 24, "Entities", oBrick);
	brick.draw_color = color_arr[curr_row];
	brick.brick_score = brick_score_arr[curr_row];
	brick.powerupChance = _pup_chance;
	//show_debug_message("laying brick: " + string(curr_brick));

	curr_brick++;
	bricks_spawned++;

	if(curr_brick == 15){
		curr_row++;
		//show_debug_message("new row");
		curr_brick = 0;
	}
	


	alarm[0] = 1;
}