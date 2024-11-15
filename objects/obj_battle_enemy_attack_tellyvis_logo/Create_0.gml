alarm[1] = room_speed * 6;
move = false;
image_alpha = 0;
direction = choose(45, 135, 225, 315);
depth = obj_heart_battle_fighting_parent.depth - 1;
attack_color = "white";
instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth, obj_battle_enemy_attack_tellyvis_logo_white);
