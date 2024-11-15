var generator;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("el bailador", "el bailador", "el bailador");

if (global.battle_enemy_name == "flowey")
    damage_number = scr_determine_damage_number_enemy("flowey", "flowey", "flowey");

generator = 3142;
box = 3154;
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
hit_extend_neg = 20;
end_boundary = box.bbox_top + obj_sme_yellow_rhythm_generator.note_speed_numerator;
in_hint_boundary = false;
hint_marker_scale = 1;
hit_marker_scale_dir = 1;
hint_marker_alpha = 0.4;
note_destroy = false;
