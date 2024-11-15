if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_index = 5;
image_blend = c_yellow;
image_alpha = 0;
image_angle = -90;
destroy_self = false;
destroy_type = 0;
bullet_hit_points = 1;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
fall_delay = 30;

if (global.hotland_flag[2] == 3)
    fall_delay = 15;
