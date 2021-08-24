/// @function game_over
/// @arg NAME {TYPE} DESC
/// @desc Trigger Game Over
function game_over(){
	if(instance_exists(Director)) instance_destroy(Director);
	room_goto(rmGameOver)
}