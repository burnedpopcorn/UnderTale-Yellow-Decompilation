var box = obj_dialogue_box_battle_transformation_any;
bottle[0] = instance_create(box.x, box.bbox_top - 2, obj_battle_enemy_attack_starlo_bottle);
bottle[1] = instance_create(box.bbox_left + 20, box.bbox_top - 2, obj_battle_enemy_attack_starlo_bottle);
bottle[2] = instance_create(box.bbox_right - 20, box.bbox_top - 2, obj_battle_enemy_attack_starlo_bottle);
attack_interval = 30;
alarm[0] = 30;
