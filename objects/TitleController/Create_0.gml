/// @desc
chaos_range[0] = 1;
chaos_range[1] = 10;

selected_perma = false;
perma_text = ["Off", "On"];
selected_chaos = 1;

play_char = "";
cont_char = "";
char = "-";
sound1_played = false;
sound2_played = false;

instance_create_depth(room_width / 2 - 64, room_height / 2 + 128, depth, oTitleButton_diffL);
instance_create_depth(room_width / 2 + 64, room_height / 2 + 128, depth, oTitleButton_diffR);

instance_create_depth(room_width / 2 - 40, room_height / 2 + 224, depth, oTitleButton_chaosL);
instance_create_depth(room_width / 2 + 40, room_height / 2 + 224, depth, oTitleButton_chaosR);

instance_create_depth(room_width / 2 - 32 - 32 - 16, room_height / 2 + 224, depth, oTitleButton_chaosMin);
instance_create_depth(room_width / 2 + 32 + 32 + 16, room_height / 2 + 224, depth, oTitleButton_chaosMax);

