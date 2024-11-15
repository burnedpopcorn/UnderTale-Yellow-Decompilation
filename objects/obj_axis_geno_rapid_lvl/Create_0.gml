if (live_call())
    return global.live_result;

image_speed = 0;
image_index = 0;
initial_lvl = global.player_level;
target_lvl = 15;
level_current = initial_lvl;
timer_current = 0;
timer_max = 100;
