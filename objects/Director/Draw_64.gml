/// @desc Debug Drawing

if(DebugMode){
	draw_set_font(fntSystem);
	draw_text(16, 16, "Pong Flag: " + string(PlayerStages[| 0]));
	draw_text(16, 48, "Brik Flag: " + string(PlayerStages[| 1]));
	draw_text(16, 80, "Spac Flag: " + string(PlayerStages[| 2]));
	draw_text(16, 112, "Cent Flag: " + string(PlayerStages[| 3]));
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width(), 32, "FPS = " + string(fps_real));
	draw_reset();
}