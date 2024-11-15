if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_martlet_feather_circle_final_feather)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_feather_circle_final_spawner)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_feather_circle_final_target_1_axis)
    instance_destroy();

with (obj_martlet_attack_splitting_feather_ext_checker)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_genocide_feather_ext_feather_final)
    instance_destroy();

if (global.current_hp_enemy <= 0)
    exit;

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
