var distance = 120;
var distance_offset = 60;
var boundary_left = obj_dialogue_box_battle_transformation_any.bbox_left;
var boundary_right = obj_dialogue_box_battle_transformation_any.bbox_right;
var boundary_top = obj_dialogue_box_battle_transformation_any.bbox_top;
var boundary_bottom = obj_dialogue_box_battle_transformation_any.bbox_bottom;
instance_create(choose(boundary_left - distance, boundary_right + distance), irandom_range(boundary_top + distance_offset, boundary_bottom - distance_offset), obj_battle_enemy_attack_martlet_package);
counter_current += 1;

if (counter_current < counter_max)
    alarm[0] = alarm_count;
