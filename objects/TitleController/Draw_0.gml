/// @desc

draw_txt_centered(room_width / 2, 64, "Game Title", fntLarge, c_white);
draw_txt_centered(room_width / 2, room_height / 2, string(play_char) + " Start Game " + string(play_char), fntDefault, c_white);


var _dis_color;
if(ContinueGameRoom == -1) _dis_color = c_grey;
else _dis_color = c_white;

draw_txt_centered(room_width / 2, room_height / 2 + 32, string(cont_char) + " Continue " + string(cont_char), fntDefault, _dis_color);

draw_txt_centered(room_width / 2, room_height / 2 + 96, "Toggle Permadeath:", fntDefault, c_white);
draw_txt_centered(room_width / 2, room_height / 2 + 128, string(perma_text[selected_perma]), fntDefault, c_white);

draw_txt_centered(room_width / 2, room_height / 2 + 192, "Entropy Level:", fntDefault, c_white);
draw_txt_centered(room_width / 2, room_height / 2 + 224, string(selected_chaos), fntDefault, c_white);

