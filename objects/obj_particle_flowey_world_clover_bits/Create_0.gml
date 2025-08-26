if (variable_global_exists("ps") && part_system_exists(global.ps))
    part_system_clear(global.ps);
else
    global.ps = part_system_create();

part_system_depth(global.ps, -1);
global.pt_ef_bits = part_type_create();
part_type_shape(global.pt_ef_bits, 0);
part_type_size(global.pt_ef_bits, 1, 1, 0, 0);
part_type_scale(global.pt_ef_bits, 2, 2);
part_type_orientation(global.pt_ef_bits, 0, 0, 0, 0, 0);
part_type_color3(global.pt_ef_bits, 65535, 65535, 65535);
part_type_alpha3(global.pt_ef_bits, 1, 0.8, 0);
part_type_blend(global.pt_ef_bits, 0);
part_type_life(global.pt_ef_bits, 15, 15);
part_type_speed(global.pt_ef_bits, 2, 2, 0, 0);
part_type_direction(global.pt_ef_bits, 0, 360, 0, 0);
part_type_gravity(global.pt_ef_bits, 0, 270);
global.pe_ef_bits = part_emitter_create(global.ps);
var xp = x;
var yp = y;
part_emitter_region(global.ps, global.pe_ef_bits, xp - 4, xp + 4, yp - 4, yp + 4, 0, 1);
part_emitter_burst(global.ps, global.pe_ef_bits, global.pt_ef_bits, 16);
part_emitter_destroy(global.ps, global.pe_ef_bits);
