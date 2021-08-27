/// @desc
/// @desc
draw_txt_centered(room_width / 2, room_height / 2, "GAME OVER", fntDefault, c_white);
draw_txt_centered(room_width / 2, room_height / 2 + 32, "Continue?", fntDefault, c_white);

draw_txt_centered(room_width / 2 - 96, room_height / 2 + 64, "Y - Yes", fntDefault, continueDisabled);
draw_txt_centered(room_width / 2 + 96, room_height / 2 + 64, "N - No", fntDefault, c_white);