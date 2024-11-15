if (live_call())
    return global.live_result;

attach_points = [[-400, -400], [148, 114], [149, 110], [149, 106], [148, 140], [147, 146], [147, 150], [147, 146], [147, 150], [147, 150], [147, 146], [147, 150], [147, 150], [147, 146], [147, 150], [147, 150], [147, 146], [147, 150], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [145, 86], [145, 86], [145, 86], [145, 86], [145, 86], [145, 84], [145, 84], [145, 82]];
bullet_hit_draw_timer = 0;
mask_is_vulnerable = false;
mask_flash_multiplier = 0;
mask_hit_points = 7;
mask_hit_points_max = 7;

if (global.hotland_flag[2] == 1)
{
    sprite_index = spr_ceroba_transformation_p1_mask_start;
    image_index = image_number - 1;
    image_speed = 0;
}

if (global.hotland_flag[2] == 2)
    sprite_index = spr_ceroba_mask_2_gray;

if (global.hotland_flag[2] == 3)
    sprite_index = spr_ceroba_mask_3;

mask_ps = part_system_create();
part_system_depth(mask_ps, depth - 1);
mask_pt_effect_1 = part_type_create();
part_type_shape(mask_pt_effect_1, 0);
part_type_size(mask_pt_effect_1, 1, 1, 0, 0);
part_type_scale(mask_pt_effect_1, 3, 3);
part_type_orientation(mask_pt_effect_1, 0, 359, 0, 0, 0);
part_type_color3(mask_pt_effect_1, c_white, c_white, c_white);
part_type_alpha3(mask_pt_effect_1, 1, 1, 0);
part_type_blend(mask_pt_effect_1, 0);
part_type_life(mask_pt_effect_1, 15, 15);
part_type_speed(mask_pt_effect_1, 8, 8, 0, 0);
part_type_direction(mask_pt_effect_1, 70, 110, 0, 0);
part_type_gravity(mask_pt_effect_1, 1, 270);
mask_pe_effect_1 = part_emitter_create(mask_ps);
