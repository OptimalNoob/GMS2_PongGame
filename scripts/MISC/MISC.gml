/// @function game_over
/// @arg NAME {TYPE} DESC
/// @desc Trigger Game Over
function game_over(){
	if(PlayerScore > PlayerHighScore){
		PlayerHighScore = PlayerScore;
	}
	PlayerScore = 0;
	if(instance_exists(Director)) instance_destroy(Director);
	audio_play_sound(sndGameOver, 1, false);
	room_goto(rmGameOver);
}


/// @function math_map_int
/// @desc maps a value and range to a new range and outputs the value from the new range
function math_map_int(_val, _inpA, _inpB, _outA, _outB){
    var _result = ceil( (_val - _inpA) / (_inpB - _inpA) * (_outB - _outA) + _outA );

    return _result;
}