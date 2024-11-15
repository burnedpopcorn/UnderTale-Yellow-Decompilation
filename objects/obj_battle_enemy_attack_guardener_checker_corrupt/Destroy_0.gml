with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_destroy(obj_guardener_flower);
instance_destroy(obj_battle_enemy_attack_guardener_arm);
instance_destroy(obj_battle_enemy_attack_guardener_arm_half);
instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_attack_switch);
obj_battle_flowey_body_1.base_sprite = flowey_sprite_original;
obj_battle_flowey_body_1.depth = flowey_depth_original;
