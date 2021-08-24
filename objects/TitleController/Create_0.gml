/// @desc
diff_list = ds_list_create();
ds_list_add(diff_list, "Easy", "Normal", "Hard");
chaos_range[0] = 1;
chaos_range[1] = 10;

selected_diff = 1;
selected_chaos = 1;

play_char = "";
cont_char = "";
char = "-";

instance_create_depth(room_width / 2 - 64, room_height / 2 + 128, depth, oTitleButton_diffL);
instance_create_depth(room_width / 2 + 64, room_height / 2 + 128, depth, oTitleButton_diffR);

instance_create_depth(room_width / 2 - 32, room_height / 2 + 224, depth, oTitleButton_chaosL);
instance_create_depth(room_width / 2 + 32, room_height / 2 + 224, depth, oTitleButton_chaosR);