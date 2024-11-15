var box;

box = 3154;
instance_create_depth(box.bbox_left - 20, box.bbox_top + 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);
instance_create_depth(box.bbox_right + 20, box.y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);
instance_create_depth(box.bbox_left - 20, box.bbox_bottom - 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);
alarm[1] = attack_interval;
