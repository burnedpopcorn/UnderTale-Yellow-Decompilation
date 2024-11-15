var trail_col;

if (live_call())
    return global.live_result;

global.ps_outer = part_system_create();
part_system_depth(global.ps_outer, -1);
trail_col = make_color_rgb(255, 255, 255);
global.pt_trail_outer = part_type_create();
part_type_shape(global.pt_trail_outer, 1);
part_type_size(global.pt_trail_outer, 0.3, 0.3, -0.07, 0);
part_type_scale(global.pt_trail_outer, 3, 1);
part_type_orientation(global.pt_trail_outer, 0, 0, 0, 0, 0);
part_type_color3(global.pt_trail_outer, trail_col, trail_col, 0);
part_type_alpha3(global.pt_trail_outer, 1, 1, 1);
part_type_blend(global.pt_trail_outer, 0);
part_type_life(global.pt_trail_outer, 8, 8);
part_type_speed(global.pt_trail_outer, 0, 0, 0, 0);
part_type_direction(global.pt_trail_outer, 0, 360, 0, 0);
part_type_gravity(global.pt_trail_outer, 0, 0);
global.pt_trail_small = part_type_create();
part_type_shape(global.pt_trail_small, 1);
part_type_size(global.pt_trail_small, 0.15, 0.15, -0.025, 0);
part_type_scale(global.pt_trail_small, 2, 1);
part_type_orientation(global.pt_trail_small, 0, 0, 0, 0, 0);
part_type_color3(global.pt_trail_small, trail_col, trail_col, trail_col);
part_type_alpha3(global.pt_trail_small, 1, 0.5, 0);
part_type_blend(global.pt_trail_small, 0);
part_type_life(global.pt_trail_small, 12, 12);
part_type_speed(global.pt_trail_small, 0, 0, 0, 0);
part_type_direction(global.pt_trail_small, 0, 360, 0, 0);
part_type_gravity(global.pt_trail_small, 0, 0);
