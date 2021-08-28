/// @desc

draw_txt_centered(room_width / 2, 64, "A Normal Game\nof Pong", fntLarge, c_white);
draw_txt_centered(room_width / 2, 64 + 96, "A Game by\nOptimalNoob and UltraAceCombat", fntSystem, c_white);


draw_txt_centered(room_width / 2, room_height / 2, string(play_char) + " Start Game " + string(play_char), fntDefault, c_white);

if(PlayerHighScore > 0){
	draw_txt_centered(room_width / 2, 128 + 64, "High Score:", fntDefault, c_white);
	draw_txt_centered(room_width / 2, 128 + 96, string(PlayerHighScore), fntDefault, c_white);
}


var _dis_color;
if(ContinueGameRoom != -1 && !selected_perma) _dis_color = c_white;
else _dis_color = c_grey;

draw_txt_centered(room_width / 2, room_height / 2 + 32, string(cont_char) + " Continue " + string(cont_char), fntDefault, _dis_color);

draw_txt_centered(room_width / 2, room_height / 2 + 96, "Toggle Permadeath:", fntDefault, c_white);
draw_txt_centered(room_width / 2, room_height / 2 + 128, string(perma_text[selected_perma]), fntDefault, c_white);

draw_txt_centered(room_width / 2, room_height / 2 + 192, "Entropy Level:", fntDefault, c_white);
draw_txt_centered(room_width / 2, room_height / 2 + 224, string(selected_chaos), fntDefault, c_white);


var _pad = 48;
draw_sprite(sGuide_kbLeft, 0, sprite_get_width(sGuide_kbLeft) / 2 + _pad, room_height - sprite_get_height(sGuide_kbLeft) - 16);
draw_txt_centered(sprite_get_width(sGuide_kbLeft) / 2 + _pad, room_height - 32, "Move Left", fntDefault, c_white);

draw_sprite(sGuide_kbRight, 0, room_width - sprite_get_width(sGuide_kbRight) / 2 - _pad, room_height - sprite_get_height(sGuide_kbRight) - 16);
draw_txt_centered(room_width - sprite_get_width(sGuide_kbRight) / 2 - _pad, room_height - 32, "Move Right", fntDefault, c_white);

draw_sprite(sGuide_kbSpace, 0, room_width / 2, room_height - sprite_get_height(sGuide_kbSpace) - 16);
draw_txt_centered(room_width / 2, room_height - 32, "Start Blastin'", fntDefault, c_white);