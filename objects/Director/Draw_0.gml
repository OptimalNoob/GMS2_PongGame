///@desc

draw_sprite_ext(sBGPong, 0, 0, 0, 1, 1, 0, c_white, alpha_pong);
draw_sprite_ext(sBGBreakout, 0, 0, 0, 1, 1, 0, c_white, alpha_breakout);
draw_sprite_ext(sBGInvaders, 0, 0, 0, 1, 1, 0, c_white, alpha_invaders);

var _ui_center_x = 552;

draw_txt_centered(_ui_center_x, 64, "Hi-Score", fntDefault, c_white);
draw_txt_centered(_ui_center_x, 96, string(PlayerHighScore), fntDefault, c_white);

draw_txt_centered(_ui_center_x, 192, "Score", fntDefault, c_white);
draw_txt_centered(_ui_center_x, 224, string(PlayerScore), fntDefault, c_white);

var _icon_x = 504;
var _icon_y = 464;
var _text_spacing = 32;

if(room != rmGameOver && room != rmPong){
	draw_sprite(sIcon_multi, index_multi, _icon_x, _icon_y);
	if(index_multi == 1) draw_txt_centered(_icon_x, _icon_y + _text_spacing, instance_number(oBall), fntSystem, c_white);
	
	draw_sprite(sIcon_wide, index_wide, _icon_x + 64, _icon_y);
	if(index_wide == 1) draw_txt_centered(_icon_x + 64, _icon_y + _text_spacing, ceil(oPlayer.alarm[0] / 60), fntSystem, c_white);
	
	draw_sprite(sIcon_narrow, index_narrow, _icon_x + 128, _icon_y);
	if(index_narrow == 1) draw_txt_centered(_icon_x + 128, _icon_y + _text_spacing, ceil(oPlayer.alarm[0] / 60), fntSystem, c_white);
	
	draw_sprite(sIcon_pierce, index_pierce, _icon_x, _icon_y - 64);
	if(index_pierce == 1) draw_txt_centered(_icon_x, _icon_y - 64 + _text_spacing, ceil(Director.alarm[0] / 60), fntSystem, c_white);
	
	draw_sprite(sIcon_spread, index_spread, _icon_x + 64, _icon_y - 64);
	if(index_spread == 1) draw_txt_centered(_icon_x + 64, _icon_y - 64 + _text_spacing, ceil(oPlayer.alarm[1] / 60), fntSystem, c_white);
	
	draw_sprite(sIcon_shield, index_shield, _icon_x + 128, _icon_y - 64);
	if(index_shield == 1) draw_txt_centered(_icon_x + 128, _icon_y - 64 + _text_spacing, oPlayerShield.life, fntSystem, c_white);
	
	draw_sprite(sIcon_speed, index_speed, _icon_x, _icon_y - 128);
	if(index_speed == 1) draw_txt_centered(_icon_x, _icon_y - 128 + _text_spacing, ceil(oPlayer.alarm[2] / 60), fntSystem, c_white);
}