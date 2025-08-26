if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
excluded_number = irandom_range(1, 6);

if (excluded_number != 1)
    instance_create_depth(box.bbox_left + 10, box.bbox_top + 24, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 2)
    instance_create_depth(box.bbox_right - 10, box.y, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 3)
    instance_create_depth(box.bbox_left + 10, box.bbox_bottom - 24, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 4)
    instance_create_depth(box.bbox_left + 20, box.bbox_top - 20, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 5)
    instance_create_depth(box.x, box.bbox_bottom + 20, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 6)
    instance_create_depth(box.bbox_right - 20, box.bbox_top - 20, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

alarm[1] = 15;
