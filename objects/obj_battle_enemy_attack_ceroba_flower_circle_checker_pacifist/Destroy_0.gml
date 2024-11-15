if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_ceroba_flower_circle_spawner_pacifist)
    instance_destroy();

with (obj_battle_enemy_attack_ceroba_flower_circle_flower)
    instance_destroy();

instance_destroy(obj_battle_enemy_attack_ceroba_flower_circle_explosion);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
