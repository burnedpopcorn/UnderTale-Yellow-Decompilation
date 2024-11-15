var box;

box = 3154;

if ((dir == -1 && bbox_right < box.bbox_right) || (dir == 1 && bbox_left > box.bbox_left))
    instance_destroy(obj_battle_enemy_attack_flowergirls_colored_creator);
