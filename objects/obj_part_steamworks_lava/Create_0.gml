if (live_call())
    return global.live_result;

global.ps = part_system_create();
part_system_depth(global.ps, -9999);
var part_life = (room_height + 100) / 0.8;
var part_dist = (room_width * room_height) / 29257.14;
global.pt_Lava_Particles = part_type_create();
part_type_shape(global.pt_Lava_Particles, 8);
part_type_size(global.pt_Lava_Particles, 0.05, 0.075, 0, 0);
part_type_scale(global.pt_Lava_Particles, 1, 1);
part_type_orientation(global.pt_Lava_Particles, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Lava_Particles, 16751615, 16777215, 16770808);
part_type_alpha3(global.pt_Lava_Particles, 0.7, 0.7, 0);
part_type_blend(global.pt_Lava_Particles, 0);
part_type_life(global.pt_Lava_Particles, part_life * 0.75, part_life);
part_type_speed(global.pt_Lava_Particles, 0.7, 0.9, 0, 0);
part_type_direction(global.pt_Lava_Particles, 82, 97, 0, 0);
part_type_gravity(global.pt_Lava_Particles, 0, 0);
global.pe_Lava_Particles = part_emitter_create(global.ps);
var xp = x;
var yp = room_height;
part_emitter_region(global.ps, global.pe_Lava_Particles, 0, room_width, 0, room_height, 0, 0);
part_emitter_burst(global.ps, global.pe_Lava_Particles, global.pt_Lava_Particles, part_dist);
part_emitter_region(global.ps, global.pe_Lava_Particles, 0, room_width, yp - 1, yp - 1, 3, 0);
part_emitter_stream(global.ps, global.pe_Lava_Particles, global.pt_Lava_Particles, -(room_width / 18.82));
