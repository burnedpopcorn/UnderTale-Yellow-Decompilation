var distance_x = 60;
var distance_y = 20;
var distance_amount = irandom_range(0, 45);
var distance_side = irandom_range(0, 1);

if (distance_side == 0)
    instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_x - distance_amount, obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_martlet_feather_fall_feather);
else
    instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x + distance_amount, obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_martlet_feather_fall_feather);

counter_current += 1;

if (counter_current < counter_max)
    alarm[0] = alarm_count;
