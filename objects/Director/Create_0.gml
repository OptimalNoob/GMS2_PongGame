/// @desc

alpha_pong = 0;
alpha_breakout = 0;
alpha_invaders = 0;

initialize_breakout = false;

index_multi = 0;
index_wide = 0
index_narrow = 0;
index_pierce = 0;
index_spread = 0;
index_shield = 0;
index_speed = 0;

//show_debug_message(string(ChaosFactor));

brick_timeout = math_map_int(ChaosFactor, 1, 10, (30 * 60), 60);
invader_timeout = math_map_int(ChaosFactor, 1, 10, (30 * 60), 60);

