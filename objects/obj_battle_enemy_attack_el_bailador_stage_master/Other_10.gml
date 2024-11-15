var smoke_y_disjoint, smoke_x_disjoint;

smoke_y_disjoint = irandom_range(smoke_y_diff_min, smoke_y_diff_max);

if (smoke_direction == -1)
    smoke_x_disjoint = -1;
else
    smoke_x_disjoint = 0;

instance_create(default_x + smoke_x_disjoint, default_y + smoke_y_disjoint, obj_battle_enemy_attack_el_bailador_smoke);
smoke_direction = -smoke_direction;
alarm[0] = smoke_alarm;
