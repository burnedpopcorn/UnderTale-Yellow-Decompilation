counter_current = 0;
counter_max = 300;
var xx = choose(obj_dialogue_box_battle_transformation_any.bbox_left - 32, obj_dialogue_box_battle_transformation_any.bbox_right + 32);
var yy = choose(obj_dialogue_box_battle_transformation_any.bbox_top - 32, obj_dialogue_box_battle_transformation_any.bbox_bottom + 32);
instance_create(xx, yy, obj_battle_enemy_attack_ceroba_flower_spiral_spawner);
