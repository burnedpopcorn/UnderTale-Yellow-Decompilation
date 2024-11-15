if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_flowey_lightning_vertical)
    instance_destroy();

with (obj_battle_enemy_attack_flowey_lightning_vertical_warning)
    instance_destroy();

with (obj_battle_enemy_attack_flowey_lightning_horizontal)
    instance_destroy();

with (obj_battle_enemy_attack_flowey_lightning_horizontal_warning)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_attack_switch);
obj_battle_flowey_body_1.base_sprite = flowey_sprite_original;
