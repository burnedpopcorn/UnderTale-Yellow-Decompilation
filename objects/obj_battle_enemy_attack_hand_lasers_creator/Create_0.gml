var battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top - 60, -1000, obj_battle_enemy_attack_axis_laser_hand);
obj_heart_battle_fighting_axis.movement_mode = 2;
alarm[0] = room_speed * 9;
