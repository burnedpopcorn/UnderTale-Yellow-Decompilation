var box, random_direction, create_x;

box = 3154;
random_direction = irandom_range(0, 1);

if (random_direction == 0)
    create_x = box.bbox_left + 5;
else
    create_x = box.bbox_right - 5;

create_y = irandom_range(y_min, y_max);
instance_create(create_x, create_y, obj_battle_enemy_attack_cactony_needle_side_needle);
needle_count += 1;

if (needle_count < needle_max)
    alarm[0] = attack_alarm;
else
    alarm[1] = end_alarm;
