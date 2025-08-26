if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
state = 0;
can_move = false;
attack_distance = 85;
attack_distance_max = attack_distance + 32;
attack_dir = 90;
target = obj_heart_battle_fighting_parent;
attack_target_x = target.x;
attack_target_y = target.y;
bullet_speed = 3;
bullet_spawner = -4;
homing_speed = 0;
image_alpha = 0;
image_speed = 0.2;
