if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
spawn_pos = random_range(battle_box.bbox_left + 40, battle_box.bbox_right - 40);
spawn_pos_last = -1000;
alarm[0] = 20;
alarm[1] = 210;
