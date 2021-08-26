/// @desc

var btnh = 10
var btn1x1 = room_width / 2 - 80;
var btn1x2 = room_width / 2 + 80;
var btn1y1 = room_height / 2 - btnh;
var btn1y2 = room_height / 2 + btnh;

// Select START GAME
if(mouse_x > btn1x1 && mouse_x < btn1x2 && mouse_y > btn1y1 && mouse_y < btn1y2){
	play_char = char;
	if(mouse_check_button_pressed(mb_left)){
		PreviousRoom = rmTitle;
		PlayerStages[| STAGE.PONG] = true;
		if(!instance_exists(Director)) instance_create_layer(0, 0, "Controllers", Director);
		PermaDeathMode = selected_perma;
		ChaosFactor = selected_chaos;
		room_goto(rmPong);
	}
} else play_char = "";


var btn2x1 = room_width / 2 - 64;
var btn2x2 = room_width / 2 + 64;
var btn2y1 = room_height / 2 + 32 - btnh;
var btn2y2 = room_height / 2 + 32 + btnh;

// Select CONTINUE GAME
if(mouse_x > btn2x1 && mouse_x < btn2x2 && mouse_y > btn2y1 && mouse_y < btn2y2){
	cont_char = char;
	if(mouse_check_button_pressed(mb_left) && ContinueGameRoom != -1){
		if(!instance_exists(Director)) instance_create_layer(0, 0, "Controllers", Director);
		room_goto(ContinueGameRoom);
		show_debug_message("WRITE CONTINUE CODE!");
	}
} else cont_char = "";