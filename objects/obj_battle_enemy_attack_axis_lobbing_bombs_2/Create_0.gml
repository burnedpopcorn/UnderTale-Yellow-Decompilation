if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
bomb_side = choose(1, 2, 3, 4);
attack_interval = 20;
alarm[0] = 15;
alarm[1] = 240;
obj_heart_battle_fighting_parent.movement_mode = 2;
