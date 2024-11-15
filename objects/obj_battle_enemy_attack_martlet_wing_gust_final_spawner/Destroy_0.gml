if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_martlet_wind_gust_final_boulder)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_wind_gust_final_boulder_piece)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_wing_gust_final_object)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_wind_gust_wind)
    instance_destroy();

if (global.current_hp_enemy <= 0)
    exit;

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
