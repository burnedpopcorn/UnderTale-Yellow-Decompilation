if (live_call())
    return global.live_result;

attack_tick = 0;
frog_max = 12;
frog_count = 0;
frog_green = irandom_range(0, frog_max - 1);
scr_enable_battle_box_surface();
