if (live_call())
    return global.live_result;

counter_current = 0;
counter_max = 4;
alarm[0] = 30;
alarm[1] = 270;
dir = "empty";
dir_last = "empty_last";
scr_enable_battle_box_surface();
