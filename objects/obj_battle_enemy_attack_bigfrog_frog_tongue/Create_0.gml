if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
tongue_tip = instance_create_depth(x + lengthdir_x(image_xscale, direction), y + lengthdir_y(image_xscale, direction), depth - 1, obj_battle_enemy_attack_bigfrog_frog_tongue_tip);
current_length = 1;
grow_speed_target = 30;
grow_speed_current = 0;
target_length = 100;
spawner = -4;
