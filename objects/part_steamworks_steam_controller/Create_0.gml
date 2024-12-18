part_smokesys_back = part_system_create();
part_smokesys_front = part_system_create();
part_smokeEm_back = part_emitter_create(part_smokesys_back);
part_smokeEm_front = part_emitter_create(part_smokesys_front);
part_system_depth(part_smokesys_back, 0);
part_system_depth(part_smokesys_front, -room_height);
part_smoke = part_type_create();
part_type_sprite(part_smoke, 665, 0, 1, 0);
part_type_size(part_smoke, 0.25, 0.25, 0.02, 0);
part_type_colour2(part_smoke, c_white, c_white);
part_type_alpha2(part_smoke, 1, 0);
part_type_speed(part_smoke, 1, 1, -0.001, 0);
part_type_direction(part_smoke, 90, 90, 0, 3);
part_type_orientation(part_smoke, 0, 359, random_range(-2, 2), 0.1, 1);
part_type_life(part_smoke, 25, 25);
part_type_blend(part_smoke, 1);
alarm[0] = 2;
