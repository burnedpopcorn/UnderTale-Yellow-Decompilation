obj_battle_flowey_body_1.image_alpha = 1;
global.image_alpha_enemy_attacking = 1;
persistent = false;
instance_create_depth(0, 0, 0, obj_battle_flowey_background_ui);
instance_destroy(obj_dialogue_box_battle_transformation_any_out);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_destroy();
obj_battle_flowey_body_1.depth = 0;
obj_battle_flowey_body_1.can_draw_ghost = true;
instance_destroy();
