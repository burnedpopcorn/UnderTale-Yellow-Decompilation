if (live_call())
    return global.live_result;

if (global.route == 3 || global.battle_enemy_name == "flowey")
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_sme_yellow_rhythm_note_geno);
    exit;
}

var generator = 3143;
box = obj_dialogue_box_battle_transformation_any;
image_speed = 0;

if (x == generator.dj_note_center_x)
    image_index = 1;
else if (x == generator.dj_note_right_x)
    image_index = 2;
else
    image_index = 0;

image_alpha_val = 0;
image_alpha = image_alpha_val;
fade_in_speed = 0.2;
note_speed = generator.note_speed;
note_sound = generator.note_sound;
damage_pos_x = generator.damage_pos_x;
damage_pos_y = generator.damage_pos_y;
end_boundary = box.bbox_top + obj_sme_yellow_rhythm_generator.note_speed_numerator + obj_sme_yellow_rhythm_selection.hit_extend_neg;
hint_boundary = obj_sme_yellow_rhythm_selection.bbox_top - 30;
in_hint_boundary = false;
hint_marker_scale = 1;
hit_marker_scale_dir = 1;
hint_marker_alpha = 0.4;
