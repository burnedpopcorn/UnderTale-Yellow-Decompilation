var create_y;

create_y = irandom_range(rand_hmin, rand_hmax);
instance_create(create_x, create_y, obj_battle_enemy_attack_dunebud_tumbleweeds_tumbleweed);
weed_count += 1;

if (weed_count < weed_max)
    alarm[0] = weed_alarm;
