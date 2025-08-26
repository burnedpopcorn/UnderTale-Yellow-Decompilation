var box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(box.bbox_left + 10, box.bbox_top + 24, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);
instance_create_depth(box.bbox_right - 10, box.y, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);
instance_create_depth(box.bbox_left + 10, box.bbox_bottom - 24, obj_heart_battle_fighting_parent.depth - 1, obj_attack_warning_exclamation_mark);
alarm[1] = 15;
