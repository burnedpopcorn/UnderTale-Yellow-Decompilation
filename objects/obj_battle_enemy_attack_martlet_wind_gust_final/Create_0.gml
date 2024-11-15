var xp, yp;

if (live_call())
    return global.live_result;

global.ps = part_system_create();
part_system_depth(global.ps, -1);
global.pt_Effect1 = part_type_create();
part_type_shape(global.pt_Effect1, 0);
part_type_size(global.pt_Effect1, 1, 1, 0, 0);
part_type_scale(global.pt_Effect1, 2, 18);
part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect1, 9868950, 9868950, 9868950);
part_type_alpha3(global.pt_Effect1, 0, 0.3, 0);
part_type_blend(global.pt_Effect1, 0);
part_type_life(global.pt_Effect1, 20, 20);
part_type_speed(global.pt_Effect1, 8, 8, 0, 0);
part_type_direction(global.pt_Effect1, 270, 270, 0, 0);
part_type_gravity(global.pt_Effect1, 0, 0);
global.pe_Effect1 = part_emitter_create(global.ps);
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_Effect1, xp - 80, xp + 80, yp - 30, yp + 30, 0, 0);
