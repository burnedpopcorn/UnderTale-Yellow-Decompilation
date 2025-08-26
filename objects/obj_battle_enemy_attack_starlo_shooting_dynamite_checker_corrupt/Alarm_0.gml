var box = obj_dialogue_box_battle_transformation_any;
alarm[0] = 25;
instance_create(choose(box.bbox_left - 30, box.bbox_right + 30), irandom_range(box.bbox_top, box.bbox_bottom - 40), obj_battle_enemy_attack_starlo_dynamite_alt);
dynamite_spawned_count += 1;

if (dynamite_spawned_count >= dynamite_spawned_max)
    instance_destroy();
