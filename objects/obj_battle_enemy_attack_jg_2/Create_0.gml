var box, trash;

if (live_call())
    return global.live_result;

attack_timer = room_speed * 9;
alarm[0] = attack_timer;
box = 3154;
trash = instance_create_depth(box.x - 120, box.bbox_top - 60, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_garbage_can);
trash.disc_count = irandom_range(6, 10);
instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 65, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_jandroid_slippery_floor_warning);
