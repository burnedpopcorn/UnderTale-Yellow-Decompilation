var box;

box = 3154;
alarm[0] = 28;
instance_create(choose(box.bbox_left - 30, box.bbox_right + 30), irandom_range(box.bbox_top, box.bbox_bottom - 40), obj_battle_enemy_attack_starlo_dynamite);
dynamite_spawned_count += 1;

if (dynamite_spawned_count >= dynamite_spawned_max)
    instance_destroy();
