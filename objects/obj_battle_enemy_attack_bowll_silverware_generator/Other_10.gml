instance_create(box.x - 1, box.y + (silv_distance * silv_sign), obj_battle_enemy_attack_bowll_silverware_all);
instance_create(box.x + 1, box.y + (silv_distance * -silv_sign), obj_battle_enemy_attack_bowll_silverware_all);
create_count += 1;

if (create_count < create_max)
    alarm[0] = create_alarm;
else
    can_end = true;
