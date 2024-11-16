var xp, yp;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
global.ps = part_system_create();
part_system_depth(global.ps, -1);
global.pt_hands = part_type_create();
part_type_shape(global.pt_hands, 0);
spr_Hands = spr_attack_flowey_intermission_hands;
part_type_sprite(global.pt_hands, spr_Hands, 1, 0, 0);
part_type_size(global.pt_hands, 1, 1, 0, 0);
part_type_scale(global.pt_hands, 1, 1);
part_type_orientation(global.pt_hands, 0, 0, 0, 0, 1);
part_type_color3(global.pt_hands, c_white, c_white, 0);
part_type_alpha3(global.pt_hands, 0, 1, 0);
part_type_blend(global.pt_hands, 0);
part_type_life(global.pt_hands, 140, 180);
part_type_speed(global.pt_hands, 0.25, 1, 0, 0);
part_type_direction(global.pt_hands, 47, 125, 0, 0);
part_type_gravity(global.pt_hands, 0, 0);
global.pt_hands_copy = part_type_create();
part_type_shape(global.pt_hands_copy, 12);
part_type_size(global.pt_hands_copy, 1, 1, 0, 0);
part_type_scale(global.pt_hands_copy, 1, 1);
part_type_orientation(global.pt_hands_copy, 0, 0, 0, 0, 1);
part_type_color3(global.pt_hands_copy, c_white, c_white, 0);
part_type_alpha3(global.pt_hands_copy, 0, 1, 0);
part_type_blend(global.pt_hands_copy, 0);
part_type_life(global.pt_hands_copy, 180, 200);
part_type_speed(global.pt_hands_copy, 0.15, 0.35, 0, 0);
part_type_direction(global.pt_hands_copy, 47, 125, 0, 0);
part_type_gravity(global.pt_hands_copy, 0, 0);
part_system_depth(global.ps, -509);
global.pe_hands = part_emitter_create(global.ps);
global.pe_hands_copy = part_emitter_create(global.ps);
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_hands_copy, xp - 640, xp + 640, yp - 1, yp + 1, 0, 0);
part_emitter_stream(global.ps, global.pe_hands_copy, global.pt_hands_copy, 4);
part_emitter_region(global.ps, global.pe_hands, xp - 640, xp + 640, yp - 1, yp + 1, 0, 0);
part_emitter_stream(global.ps, global.pe_hands, global.pt_hands, 2);
y_offset = 0;