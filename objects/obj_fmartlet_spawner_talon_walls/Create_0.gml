var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
attack_tick = 0;
xx[0] = battle_box.bbox_left + 4 + 50;
xx[1] = battle_box.bbox_left + 4 + 100;
xx[2] = battle_box.bbox_left + 4 + 150;
scr_enable_battle_box_surface();
