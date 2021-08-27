/// @desc

s_width = sprite_get_width(sBrick);
color_arr = [c_red, c_orange, c_yellow, c_lime, c_blue, c_purple];
brick_score_arr = [5000, 2500, 1000, 500, 250, 100];
_pup_chance = math_map_int(ChaosFactor, 1, 10, 40, 80);

curr_brick = 0;
max_bricks = 90;
curr_row = 0;
bricks_spawned = 0;

alarm[0] = 1;

debug_y = irandom(10);