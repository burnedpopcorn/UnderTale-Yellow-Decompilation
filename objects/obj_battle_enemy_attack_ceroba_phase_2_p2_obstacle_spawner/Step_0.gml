if (live_call())
    return global.live_result;

if (!scr_battle_box_resize_midfight(75, 128))
    exit;

if (!alarm[0])
    alarm[0] = 15;
