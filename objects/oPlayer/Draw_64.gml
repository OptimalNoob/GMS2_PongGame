/// @desc
if(PlayerStages[| STAGE.INVADERS]){
	draw_text(room_width - 216 + 32 - 8, 512 + 16,"Health: ");
	draw_text(room_width -  216 + 128, 512 + 16, player_health);
}

draw_text(room_width - 216 + 32 - 8, 512 + 32 + 16,"Lives: ");
draw_text(room_width - 216 + 128, 512 + 32 + 16, PlayerLives);