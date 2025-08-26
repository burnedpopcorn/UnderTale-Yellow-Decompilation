if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
battle_box = obj_dialogue_box_battle_transformation_any;
sprite_set_offset(spr_bigfrog_fly_herotarget, 11, 11);
sprite_set_offset(spr_bigfrog_fly_villaintarget, 11, 11);
x_target = irandom_range(battle_box.bbox_left + 40, battle_box.x - 40);
y_target = irandom_range(battle_box.bbox_top + 20, battle_box.bbox_bottom - 20);
target_bounds_left = battle_box.x;
target_bounds_right = battle_box.bbox_right - 20;
target_object = 993;
target_count_max = 3;
target_count = target_count_max;
target_timer_max = 5;
target_timer = target_timer_max;
image_alpha = 0;
scene = 0;
