if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_xscale = 0.1;
image_yscale = 0.1;
image_speed = 0;
color_blue = make_color_rgb(0, 162, 232);
surf = surface_create(640, 480);
