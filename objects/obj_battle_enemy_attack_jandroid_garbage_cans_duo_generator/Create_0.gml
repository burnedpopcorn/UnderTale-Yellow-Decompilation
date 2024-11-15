var box;

if (live_call())
    return global.live_result;

excluded_number = 0;
attack_timer = room_speed * 9;
alarm[2] = attack_timer;
box = 3154;
instance_create_depth(box.x - 120, box.bbox_top - 60, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_garbage_can);
obj_battle_enemy_attack_jandroid_garbage_can.spawn_timer_max = 15;
attack_interval = 50;
alarm[0] = 45;
scr_enable_battle_box_surface();
instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 25, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_jandroid_slippery_floor_warning);
