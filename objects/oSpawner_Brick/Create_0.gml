/// @desc

s_width = sprite_get_width(sBrick);
color_arr = [c_red, c_orange, c_yellow, c_lime, c_blue, c_purple];
brick_score_arr = [5000, 2500, 1000, 500, 250, 100];
_pup_chance = math_map_int(ChaosFactor, 1, 10, 10, 80);

curr_brick = 0;
max_bricks = 90;
curr_row = 0;
bricks_spawned = 0;

alarm[0] = 1;

//for(i = 0; i < 6; i++){
//	for(j = 0; j < 15; j++){
//		var brick = instance_create_layer(s_width / 2 + 32 + (j * 24), 32 + (i * 14) + 24, "Entities", oBrick);
//		brick.draw_color = color_arr[i];
//		brick.brick_score = brick_score_arr[i];
//		brick.powerupChance = _pup_chance;
//	}
//}