if (creation_state == 0)
    instance_create(0, 0, obj_battle_enemy_attack_martlet_ff_1_checker);
else if (creation_state == 1)
    instance_create(0, 0, obj_battle_enemy_attack_martlet_ff_2_checker);
else if (creation_state == 2)
    instance_create(0, 0, obj_battle_enemy_attack_martlet_ff_3_checker);
else if (creation_state == 3)
    instance_destroy();

creation_state += 1;
