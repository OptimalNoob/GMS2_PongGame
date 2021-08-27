/// @desc

var btnh = 10
var btn1x1 = room_width / 2 - 80;
var btn1x2 = room_width / 2 + 80;
var btn1y1 = room_height / 2 - btnh;
var btn1y2 = room_height / 2 + btnh;

// Select START GAME
if(mouse_x > btn1x1 && mouse_x < btn1x2 && mouse_y > btn1y1 && mouse_y < btn1y2){
	if(!sound1_played){
		sound1_played = true;
		audio_play_sound(sndNav01, 1, false);
	}
	play_char = char;
	if(mouse_check_button_pressed(mb_left)){
		PreviousRoom = rmTitle;
		PlayerStages[| STAGE.PONG] = true;
		show_debug_message(selected_perma);
		PermaDeathMode = selected_perma;
		ChaosFactor = selected_chaos;
		if(PermaDeathMode) PlayerLives = 0;
		else PlayerLives = 3;
		show_debug_message(PlayerLives);
		if(!instance_exists(Director)) instance_create_layer(0, 0, "Controllers", Director);
		room_goto(rmPong);
	}
} else {
	sound1_played = false;
	play_char = "";
}


var btn2x1 = room_width / 2 - 64;
var btn2x2 = room_width / 2 + 64;
var btn2y1 = room_height / 2 + 32 - btnh;
var btn2y2 = room_height / 2 + 32 + btnh;

// Select CONTINUE GAME
if(mouse_x > btn2x1 && mouse_x < btn2x2 && mouse_y > btn2y1 && mouse_y < btn2y2){
	if(!sound2_played){
		sound2_played = true;
		if(ContinueGameRoom != -1 && !selected_perma) audio_play_sound(sndNav01, 1, false);
	}
	if(ContinueGameRoom != -1 && !selected_perma) cont_char = char;
	if(mouse_check_button_pressed(mb_left) && ContinueGameRoom != -1 && !selected_perma){
		PreviousRoom = room;
		if(!instance_exists(Director)) instance_create_layer(0, 0, "Controllers", Director);
		room_goto(ContinueGameRoom);
	}
} else {
	cont_char = "";
	sound2_played = false;
}