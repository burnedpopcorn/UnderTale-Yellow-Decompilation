var battle_box, ball_spawn_timer, sword_spawn_timer;

battle_box = 3154;
attack_timer = room_speed * 6;
ball_spawn_timer = room_speed * 3;
sword_spawn_timer = room_speed * 1;
sword_dist = 100;
sword_spawn_x = irandom_range(battle_box.bbox_left + 4 + (sword_dist / 2), battle_box.bbox_right - 4 - (sword_dist / 2));
instance_create_depth(sword_spawn_x - (sword_dist * 0.5), battle_box.bbox_top - 4, -999999, obj_attack_moray_balls_sword);
alarm[1] = ball_spawn_timer;
alarm[2] = sword_spawn_timer;
scr_enable_battle_box_surface();
