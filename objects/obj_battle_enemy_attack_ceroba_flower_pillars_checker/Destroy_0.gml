with (obj_battle_enemy_attack_ceroba_fire_circle_fireball)
    instance_destroy();

with (obj_battle_enemy_attack_ceroba_fire_circle_spawner)
    instance_destroy();

instance_destroy(obj_battle_enemy_attack_ceroba_fire_circle_explosion);
instance_destroy(obj_battle_enemy_attack_ceroba_fire_circle_ring_blue);
instance_destroy(obj_battle_enemy_attack_ceroba_fire_circle_ring_orange);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
