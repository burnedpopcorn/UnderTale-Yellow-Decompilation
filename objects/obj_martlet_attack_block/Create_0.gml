if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
bullet_hit_points = 1;
bullet_destroy_self = false;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
speed = 5;
direction = 270;
