if (live_call())
    return global.live_result;

attack_stop = false;
battle_box = obj_dialogue_box_battle_transformation_any;
spawn_corner_last = 0;
spawn_direction_last = 0;
alarm[0] = 15;

if (global.hotland_flag[2] >= 2)
    alarm[0] = 1;
