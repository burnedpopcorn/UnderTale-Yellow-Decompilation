var box;

box = 3154;

if (!green_flower_spawned)
{
    if ((flower_spawned_count > 1 && irandom(10) == 1) || flower_spawned_count == (flower_spawned_max - 3))
    {
        instance_create(choose(box.bbox_left - 40, box.bbox_right + 40), irandom_range(box.bbox_top - 15, box.bbox_bottom), obj_battle_enemy_attack_flowergirls_falling_flowers_flower_green);
        green_flower_spawned = true;
        alarm[0] = 30;
        exit;
    }
}

instance_create(choose(box.bbox_left - 40, box.bbox_right + 40), irandom_range(box.bbox_top - 60, box.bbox_bottom), obj_battle_enemy_attack_flowergirls_falling_flowers_flower);
flower_spawned_count += 1;

if (flower_spawned_count >= flower_spawned_max)
    alarm[1] = 30;
else
    alarm[0] = 22;
