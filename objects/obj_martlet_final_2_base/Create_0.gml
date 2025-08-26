if (live_call())
    return global.live_result;

martlet_head = instance_create_depth(x, y - 20, depth - 2, obj_martlet_final_2_head);
martlet_legs = instance_create_depth(x + 10, y + 35, depth + 1, obj_martlet_final_2_legs);
martlet_fist_left = instance_create_depth(x - 30, y - 5, depth - 4, obj_martlet_final_2_fist_1);
martlet_fist_right = instance_create_depth(x - 10, y - 50, depth + 1, obj_martlet_final_2_fist_2);
martlet_hair = instance_create_depth(300, 75, depth + 4, obj_martlet_final_2_hair);
martlet_animation_enabled = false;
martlet_sprites_reset = false;
martlet_target_melt_sprite = sprite_index;
martlet_previous_melt_sprite = sprite_index;
martlet_previous_melt_sprite_alpha = 0;
martlet_sprite_base = 2690;
no_loop = false;
damage_disjoint_count = 0;
damage_disjoint_x = 0;
no_loop_damage_disjoint_count = false;
starting_point_x = x;
starting_point_y = y;
sin_timer = 0;
healthbar_alpha = 0;
healthbar_timer = 0;
healthbar_timer_max = 30;
damage_flash_timer = 0;
