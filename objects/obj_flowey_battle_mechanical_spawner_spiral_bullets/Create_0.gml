if (live_call())
    return global.live_result;

wave_count = 5;
bullet_count = 5;
bullet_delay = 3;
scene = 0;
cutscene_timer = 0;
spawn_dir = 0;
spawn_dir_inc = 360 / bullet_count;
spawn_dir_wave_inc = 35;
