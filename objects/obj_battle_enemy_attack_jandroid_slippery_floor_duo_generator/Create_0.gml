excluded_number = 0;
attack_interval = 40;
alarm[0] = 15;
scr_enable_battle_box_surface();
alarm[2] = room_speed * 8;
instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 25, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_jandroid_slippery_floor_warning);
