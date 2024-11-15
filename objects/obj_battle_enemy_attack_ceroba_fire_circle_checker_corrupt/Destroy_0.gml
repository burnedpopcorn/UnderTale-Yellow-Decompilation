with (obj_battle_enemy_attack_ceroba_fire_circle_fireball)
    instance_destroy();

with (obj_battle_enemy_attack_ceroba_fire_circle_spawner)
    instance_destroy();

instance_destroy(obj_battle_enemy_attack_ceroba_fire_circle_explosion);
instance_destroy(obj_battle_enemy_attack_ceroba_fire_circle_ring_blue);
instance_destroy(obj_battle_enemy_attack_ceroba_fire_circle_ring_orange);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_attack_switch);
obj_battle_flowey_body_1.base_sprite = flowey_sprite_original;
