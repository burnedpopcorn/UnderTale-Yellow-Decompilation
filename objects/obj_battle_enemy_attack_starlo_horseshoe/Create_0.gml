var box;

damage_number = scr_determine_damage_number_enemy("starlo", "void", "void");
attack_stage = 1;
swing_speed = 0;
swing_speed_max = 3.5;
image_alpha = 0;
screenshake = false;
screenshake_max = 5;
box = 3154;
target_y = box.y - 10;
instance_create(x, target_y, obj_battle_enemy_attack_starlo_train_warning);
