var current_position_new = irandom_range(1, 3);

while (current_position_new == current_position)
    current_position_new = irandom_range(1, 3);

current_position = current_position_new;
alarm[1] = 75;
obj_battle_enemy_attack_ceroba_flower_spray_checker.counter_current += 1;
