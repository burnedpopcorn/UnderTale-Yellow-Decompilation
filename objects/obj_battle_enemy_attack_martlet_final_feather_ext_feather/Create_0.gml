if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
x_previous = x;
y_previous = y;
id_checker = global.id_store;
global.id_store = id;
x_list = ds_list_create();
y_list = ds_list_create();
angle_list = ds_list_create();
max_points_trail = 3;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = trail_cc_start;
bullet_hit_points = 1;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
speed = 10;
