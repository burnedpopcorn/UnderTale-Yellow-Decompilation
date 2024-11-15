if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_ceroba_staff_1);
instance_destroy(obj_battle_enemy_attack_ceroba_staff_orange);
instance_destroy(obj_battle_enemy_attack_ceroba_flower_spray_spawner_pacifist);
instance_destroy(obj_battle_enemy_attack_ceroba_flower_spray_bullet);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
