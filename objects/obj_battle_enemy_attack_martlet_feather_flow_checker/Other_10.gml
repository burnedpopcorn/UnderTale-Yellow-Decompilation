var distance = 60;
var distance_offset = 45;
var distance_side = irandom_range(0, 1);
var boundary_left = obj_dialogue_box_battle_transformation_any.bbox_left;
var boundary_right = obj_dialogue_box_battle_transformation_any.bbox_right;
var boundary_top = obj_dialogue_box_battle_transformation_any.bbox_top;
var boundary_bottom = obj_dialogue_box_battle_transformation_any.bbox_bottom;

if (distance_side == 0)
    instance_create(irandom_range(boundary_left + distance_offset, boundary_right - distance_offset), choose(boundary_top - distance, boundary_bottom + distance), obj_battle_enemy_attack_martlet_feather_flow_vertical);
else if (distance_side == 1)
    instance_create(choose(boundary_left - distance, boundary_right + distance), irandom_range(boundary_top + distance_offset, boundary_bottom - distance_offset), obj_battle_enemy_attack_martlet_feather_flow_horizontal);

counter_current += 1;

if (counter_current < counter_max)
    alarm[0] = alarm_count;
