instance_create(x, y - (sprite_height / 2), obj_battle_enemy_attack_dunebud_sandcastle_arrow);
fire_count += 1;

if (fire_count < fire_max)
    alarm[0] = attack_alarm;
else
    alarm[1] = end_alarm;
