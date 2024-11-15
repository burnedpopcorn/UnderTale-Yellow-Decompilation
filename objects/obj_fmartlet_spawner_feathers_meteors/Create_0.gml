if (live_call())
    return global.live_result;

attack_tick = 0;
global.ps_meteors = part_system_create();
part_system_depth(global.ps_meteors, -1);
global.pt_trail = part_type_create();
part_type_shape(global.pt_trail, 1);
part_type_size(global.pt_trail, 1, 1, 0, 0);
part_type_scale(global.pt_trail, 0.15, 0.15);
part_type_orientation(global.pt_trail, 0, 0, 0, 0, 0);
part_type_color3(global.pt_trail, 65535, 4235519, 255);
part_type_alpha3(global.pt_trail, 1, 1, 0);
part_type_blend(global.pt_trail, 0);
part_type_life(global.pt_trail, 5, 20);
part_type_speed(global.pt_trail, 0, 0.5, 0, 0);
part_type_direction(global.pt_trail, 0, 360, 0, 0);
part_type_gravity(global.pt_trail, 0, 0);
