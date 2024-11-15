if (live_call())
    return global.live_result;

attack_tick = 0;
spawn_interval = 10;
alarm[0] = spawn_interval;
scr_enable_battle_box_surface();
alarm[1] = 210;
