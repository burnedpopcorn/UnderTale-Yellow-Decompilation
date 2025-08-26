if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
spawn_pos = random_range(battle_box.bbox_left + 40, battle_box.bbox_right - 40);
spawn_pos_last = -1000;
attack_stop = false;
alarm[0] = 20;

if (global.hotland_flag[2] >= 2)
    alarm[0] = 1;
