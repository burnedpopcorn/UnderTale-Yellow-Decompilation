var box;

box = 3154;

if (excluded_number != 1)
    instance_create_depth(box.bbox_left - 20, box.bbox_top + 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);

if (excluded_number != 2)
    instance_create_depth(box.bbox_right + 20, box.y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);

if (excluded_number != 3)
    instance_create_depth(box.bbox_left - 20, box.bbox_bottom - 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);

if (excluded_number != 4)
    instance_create_depth(box.bbox_left + 20, box.bbox_top - 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);

if (excluded_number != 5)
    instance_create_depth(box.x, box.bbox_bottom + 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);

if (excluded_number != 6)
    instance_create_depth(box.bbox_right - 20, box.bbox_top - 20, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_slippery_floor_bucket);

alarm[0] = attack_interval;
