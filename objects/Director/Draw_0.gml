/// @desc

var _ui_center_x = 552;
var score_out;

switch(playerStage){
	case pStage.pong:
		score_out = playerScore;
	
		draw_txt_centered(_ui_center_x, 32, "Hi-Score", fntDefault, c_white);
		draw_txt(_ui_center_x, 64, string(playerHighScore), fntDefault, c_white,
			fa_right, fa_center);
		
		draw_txt_centered(_ui_center_x, 128, "Score", fntDefault, c_white);
		draw_txt_centered(_ui_center_x, 160, string(score_out), fntDefault, c_white);
		
	break;
	case pStage.breakout:
		score_out = string_repeat("0", leadingZeros) + string(playerScore);
		
		draw_txt_centered(_ui_center_x, 32, "Hi-Score", fntDefault, c_white);
		draw_txt(_ui_center_x, 64, string(playerHighScore), fntDefault, c_white,
			fa_right, fa_center);
		
		draw_txt_centered(_ui_center_x, 128, "Score", fntDefault, c_white);
		draw_txt_centered(_ui_center_x, 160, string(score_out), fntDefault, c_white);
		
	break;
	
	default: break;
}