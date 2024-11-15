if (live_call())
    return global.live_result;

martlet_head = instance_create_depth(x, y, depth + 1, obj_martlet_final_head);
martlet_leg_back = instance_create_depth(x, y, depth - 2, obj_martlet_final_leg_back);
martlet_leg_front = instance_create_depth(x, y, depth - 3, obj_martlet_final_leg_front);
martlet_talon_back = instance_create_depth(x, y, depth + 1, obj_martlet_final_talon_back);
martlet_talon_front = instance_create_depth(x, y, depth - 4, obj_martlet_final_talon_front);
martlet_wing_right = instance_create_depth(x, y, depth + 4, obj_martlet_final_wing);
martlet_wing_left = instance_create_depth(x, y, depth + 4, obj_martlet_final_wing);
martlet_hair = instance_create_depth(x, y, depth + 5, obj_martlet_final_hair);
martlet_wing_left.image_xscale = -1;
martlet_animation_enabled = false;
martlet_sprites_reset = false;
martlet_sprite_base = spr_martlet_final_chest;
martlet_y_target = 100;
no_loop = false;
sin_timer = 0;
speed_multiplier = 1;
healthbar_alpha = 0;
healthbar_timer = 0;
healthbar_timer_max = 30;
damage_flash_timer = 0;
wing_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
