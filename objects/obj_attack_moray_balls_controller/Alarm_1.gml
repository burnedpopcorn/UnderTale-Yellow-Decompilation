var battle_box = obj_dialogue_box_battle_transformation_any;
instance_create(battle_box.bbox_left - 7, battle_box.bbox_top - 7, obj_attack_moray_balls_ball);
instance_create(battle_box.bbox_right + 7, battle_box.bbox_top - 7, obj_attack_moray_balls_ball);
alarm[0] = attack_timer;
