if (live_call())
    return global.live_result;

battle_box = 3154;
instance_create_depth(battle_box.x, battle_box.bbox_bottom + 5, -110, obj_battle_enemy_attack_ceroba_petal_pile);
instance_create_depth(0, 0, -100, obj_battle_enemy_attack_ceroba_phase_1_background_leaves);
spawn_rate = 7;
alarm[0] = 30;
scr_enable_battle_box_surface();
attack_length = 270;
alarm[1] = attack_length;
alarm[2] = 30;
