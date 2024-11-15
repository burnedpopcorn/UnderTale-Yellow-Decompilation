with (obj_battle_enemy_attack_starlo_dynamite_alt)
    instance_destroy();

with (obj_battle_enemy_attack_starlo_dynamite_explosion)
    instance_destroy();

with (obj_battle_enemy_attack_starlo_dynamite_ring)
    instance_destroy();

with (obj_battle_enemy_attack_starlo_take_aim_target_alt)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_attack_switch);
obj_battle_flowey_body_1.base_sprite = flowey_sprite_original;
