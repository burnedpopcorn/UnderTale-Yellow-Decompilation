if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_alpha = 0;
scene = 0;
bullet_hit_points = 3;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
target_speed = 5;
bullet_count = 6;
dist_travelled = 0;
