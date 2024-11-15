if (live_call())
    return global.live_result;

counter_current = 0;
counter_max = 4;
spawn_offset = 60;

if (global.hotland_flag[2] == 3)
    spawn_offset = 40;

alarm[0] = 1;
attack_stop = false;
