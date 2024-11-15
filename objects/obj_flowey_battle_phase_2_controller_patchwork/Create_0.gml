if (live_call())
    return global.live_result;

instance_create_depth(460, 160, -100, obj_flowey_battle_phase_2_yarn_weakpoint);
instance_create_depth(160, 160, -100, obj_flowey_battle_phase_2_yarn_weakpoint);
instance_create_depth(192, 384, obj_flowey_battle_final.depth - 1, obj_flowey_battle_phase_2_yarn_hand);
alarm[0] = 14;
scene = 0;
cutscene_timer = 0;
hand_spawn_chance_max = 90;
hand_spawn_chance_curent = 90;
