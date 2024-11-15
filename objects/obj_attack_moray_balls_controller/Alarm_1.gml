var battle_box;

battle_box = 3154;
instance_create(battle_box.bbox_left - 7, battle_box.bbox_top - 7, obj_attack_moray_balls_ball);
instance_create(battle_box.bbox_right + 7, battle_box.bbox_top - 7, obj_attack_moray_balls_ball);
alarm[0] = attack_timer;
