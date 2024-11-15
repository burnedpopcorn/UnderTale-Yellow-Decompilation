if (live_call())
    return global.live_result;

image_speed = 0;
image_alpha = 0;
alarm[0] = 2;
alarm[2] = room_speed * 7;
rad_current = 0;
rad_inc = 0.05;
move_range = 30;
spray_interval = 20;
spray_amount = 4;
instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 25, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_jandroid_slippery_floor_warning);
