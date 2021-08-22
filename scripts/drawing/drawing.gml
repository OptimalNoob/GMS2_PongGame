/// @function draw_reset
/// @desc reset draw properties
function draw_reset(){
	draw_set_font(fntDefault);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_alpha(1);
}

/// @function draw_txt
/// @arg _x {real} X position of text
/// @arg _y {real} Y position of text
/// @arg _txt {string} Text to be drawn
/// @arg _font {font} Font of text
/// @arg _color {color} Color of text
/// @arg _ha Horizontal Alignment
/// @arg _va Vertical Alignment
/// @desc draw text but better
function draw_txt(_x, _y, _txt, _font, _color, _ha, _va){
	draw_set_font(_font);
	draw_set_color(_color)
	draw_set_halign(_ha);
	draw_set_valign(_va);
	draw_text(_x, _y, _txt);
	draw_reset();
}

/// @function draw_txt_centered
/// @arg _x {real} X position of text
/// @arg _y {real} Y position of text
/// @arg _txt {string} Text to be drawn
/// @arg _font {font} Font of text
/// @arg _color {color} Color of text
/// @desc draw text but better and centered
function draw_txt_centered(_x, _y, _txt, _font, _color){
	draw_set_font(_font);
	draw_set_color(_color)
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(_x, _y, _txt);
	draw_reset();
}