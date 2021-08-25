/// ENUMs for various objects:\

enum STAGE { // Access PlayerStageList ds_list for system
	PONG, BREAKOUT, INVADERS, CENT	
}

enum POWERUP { // Access currentPowerups ds_list for player
	WIDE, NARROW, SPREAD, SHIELD	
}

enum PTYPE { // Access Player Type (Paddle / Tank)
	PADDLE, TANK	
}

enum DIFF { // Accessing GameDiff globalvar
	EASY, NORM, HARD	
}

enum POWERUP_TYPES_BREAKOUT {
	MULTI, WIDE, NARROW, PENETRATE
	
	,LEN
}