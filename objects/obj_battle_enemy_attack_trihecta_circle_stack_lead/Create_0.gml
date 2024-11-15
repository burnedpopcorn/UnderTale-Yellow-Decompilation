var x_factor;

if (global.battle_enemy_name_1 == "trihecta")
    damage_number = scr_determine_damage_number_enemy("trihecta", "void", "void");
else
    damage_number = scr_determine_damage_number_enemy("tri", "hec", "ta");

if (x < (obj_dialogue_box_battle_transformation_any.bbox_left + (obj_dialogue_box_battle_transformation_any.sprite_width / 2)))
    x_factor = 1;
else
    x_factor = -1;

x_speed = 5 * x_factor;
started = false;
image_speed = 0;
image_index = 0;
image_alpha = 0;
x_list = ds_list_create();
y_list = ds_list_create();
max_points_trail = 10;
trail_sprite = spr_battle_enemy_attack_trihecta_circle_stack_white;
