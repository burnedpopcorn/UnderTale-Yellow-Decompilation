if (live_call())
    return global.live_result;

starting_point_x = x;
starting_point_y = y;
starting_point_xscale = 1;
starting_point_yscale = 1;
draw_position_x = starting_point_x;
draw_position_y = starting_point_y;
draw_position_xscale = starting_point_xscale;
draw_position_yscale = starting_point_yscale;
damage_disjoint_x = 0;
damage_disjoint_y = 0;
damage_disjoint_count = 0;
no_loop_damage_disjoint_count = false;
no_loop_create_clouds = false;
animating = false;
cloak_direction = 0;
cloak_out = false;
sign_modifier = 1;
time_elapsed = 0;
time_max = 60;
time_increase = 1;
max_rise = 0.025;
max_rise_ext = 0.01;
head_displacement_y_multiplier = 20 / sprite_height;
time_elapsed_decrease_head = 4;
