counter_current = 0;
counter_delay = room_speed * 1;
counter_delay_current = 0;
counter_timer = -1;
attack_number = 3;
bullet_spawn_number = 3;
bullet_spawn_distance = 100;

if (global.battle_phase == 2)
    bullet_spawn_number = 4;

bullet_spawn_direction = irandom_range(0, 359);
part_diamond_sys = part_system_create();
part_diamond_em = part_emitter_create(part_diamond_sys);
part_system_depth(part_diamond_sys, -49);
part_diamond_trail = part_type_create();
part_type_sprite(part_diamond_trail, 2318, 0, false, false);
part_type_size(part_diamond_trail, 1, 1, -0.15, 0);
part_type_colour2(part_diamond_trail, c_white, c_white);
part_type_alpha2(part_diamond_trail, 1, 0);
part_type_orientation(part_diamond_trail, 0, 359, choose(-4, 4), 0.1, 1);
part_type_life(part_diamond_trail, 200, 200);
part_type_blend(part_diamond_trail, 1);
