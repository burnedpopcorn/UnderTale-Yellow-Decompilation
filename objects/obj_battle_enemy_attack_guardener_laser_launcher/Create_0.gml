if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("guardener", "void", "void");
image_alpha = 0;
image_speed = 0;
image_xscale = 1;
image_yscale = 1;
scene = 0;
cutscene_timer = 0;
turn_speed = 0;
turn_speed_max = 2;
warning_line_alpha = 0;

if (!instance_exists(obj_surface_drawer))
    instance_create_depth(0, 0, depth - 1, obj_surface_drawer);
