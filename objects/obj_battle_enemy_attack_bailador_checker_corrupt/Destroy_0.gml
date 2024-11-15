with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_attack_switch);
obj_battle_flowey_body_1.base_sprite = flowey_sprite_original;
instance_destroy(obj_battle_el_bailador_controller);
