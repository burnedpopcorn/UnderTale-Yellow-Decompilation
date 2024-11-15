var box;

box = 3154;
excluded_number = irandom_range(1, 3);

if (excluded_number != 1)
    instance_create_depth(box.bbox_left + 10, box.bbox_top + 24, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 2)
    instance_create_depth(box.bbox_right - 10, box.y, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

if (excluded_number != 3)
    instance_create_depth(box.bbox_left + 10, box.bbox_bottom - 24, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);

alarm[1] = 15;
