/// @desc

var s_width = sprite_get_width(sBrick);
var color_arr = [c_red, c_orange, c_yellow, c_lime, c_blue, c_purple];

for(i = 0; i < 6; i++){
	show_debug_message(i);
	for(j = 0; j < 15; j++){
		var brick = instance_create_layer(s_width / 2 + 32 + (j * 24), 32 + (i * 14), "Instances", oBrick);
		brick.draw_color = color_arr[i];
	}
}