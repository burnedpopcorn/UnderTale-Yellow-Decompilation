if (live_call())
    return global.live_result;

with (obj_martlet_attack_talon_giant)
    instance_destroy();

with (obj_fmartlet_spawner_talon_wall)
    instance_destroy();

if (global.current_hp_enemy <= 0)
    exit;

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
