var box = obj_dialogue_box_battle_transformation_any;

if ((dir == -1 && bbox_right < box.bbox_right) || (dir == 1 && bbox_left > box.bbox_left))
    instance_destroy(obj_battle_enemy_attack_flowergirls_colored_creator);
