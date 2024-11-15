if (live_call())
    return global.live_result;

shot_count = 7;
shot_count_max = 7;
current_bell = -4;
last_bell = -4;
bullet_spawn_direction = irandom_range(0, 360);
bullet_spawn_direction_inc = 20;
alarm[0] = 20;
alarm[1] = 330;
