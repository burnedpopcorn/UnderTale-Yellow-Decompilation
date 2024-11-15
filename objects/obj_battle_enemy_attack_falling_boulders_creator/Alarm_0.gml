var box;

box = 3154;
instance_create(irandom_range(box.bbox_left + 10, box.bbox_right - 10), box.bbox_top - 60, obj_battle_enemy_attack_falling_boulders_boulder);
boulder_spawned_count += 1;

if (boulder_spawned_count <= 6)
    alarm[0] = 19;
else
    alarm[1] = 45;
