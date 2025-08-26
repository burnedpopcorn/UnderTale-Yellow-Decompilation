if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
x_center = obj_dialogue_box_battle_transformation_any.x;
y_center = obj_dialogue_box_battle_transformation_any.y;
var feather_direction = obj_battle_enemy_attack_martlet_ff_2_final_checker.feather_angle_direction;
feather_radius = distance_to_point(x_center, y_center);
feather_radius_increase = -6;
feather_angle_increase = -12 * feather_direction;
feather_angle_decrease = 1 * feather_direction;
feather_angle_min = -6 * feather_direction;
feather_angle_max = feather_angle_increase;
fai_radius_min = -(obj_dialogue_box_battle_transformation_any.bbox_right - x_center - 30);
can_fade_in = true;
can_fade_out = false;
in_box = false;
global.id_store = id;
x_list = ds_list_create();
y_list = ds_list_create();
angle_list = ds_list_create();
max_points_trail = 0;
trail_cc_max = 3;
trail_cc_start = trail_cc_max - 1;
trail_cc_current = trail_cc_start;
