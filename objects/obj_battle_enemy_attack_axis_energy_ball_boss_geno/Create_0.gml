if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
image_index = 0;
image_alpha = 0;
direction = 0;
speed = 0;
move_speed = 5;
in_bounds = false;
bounce_count = 3;
x_scale_modif = 0;
x_scale_inc = 0.5;
x_scale_modif_size = 0.05;
