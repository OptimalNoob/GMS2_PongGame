/// @desc

switch(playerStage) {
	case pStage.pong:
		control_player_pong();
		break;
	case pStage.breakout:
		control_player_breakout();
		break;
	default: break;
}