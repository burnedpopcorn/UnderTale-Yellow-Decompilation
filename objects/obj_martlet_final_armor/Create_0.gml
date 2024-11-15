if (live_call())
    return global.live_result;

damage_flash_timer = 0;
armor_hp = 12;
armor_hp_max = armor_hp;
damaged_stage = 0;
hit_shake = 0;
white_fade_alpha = 0;
fade_out = false;
fade_alpha = 0;
image_alpha = 1;
armr_ps = part_system_create();
part_system_depth(armr_ps, depth - 1);
armr_pt_effect_1 = part_type_create();
part_type_shape(armr_pt_effect_1, 0);
part_type_size(armr_pt_effect_1, 1, 1, 0, 0);
part_type_scale(armr_pt_effect_1, 3, 3);
part_type_orientation(armr_pt_effect_1, 0, 359, 0, 0, 0);
part_type_color3(armr_pt_effect_1, 4307967, 4307967, 4307967);
part_type_alpha3(armr_pt_effect_1, 1, 1, 0);
part_type_blend(armr_pt_effect_1, 0);
part_type_life(armr_pt_effect_1, 15, 15);
part_type_speed(armr_pt_effect_1, 8, 8, 0, 0);
part_type_direction(armr_pt_effect_1, 70, 110, 0, 0);
part_type_gravity(armr_pt_effect_1, 1, 270);
armr_pe_effect_1 = part_emitter_create(armr_ps);
