var bullet_number, xx, i;

counter_current = 0;
counter_max = 300;
bullet_number = 8;
xx = (obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / bullet_number;
i = 0.5;

while (i < bullet_number)
{
    instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + (i * xx), irandom_range(obj_dialogue_box_battle_transformation_any.bbox_top + 15, obj_dialogue_box_battle_transformation_any.bbox_bottom - 15), obj_battle_enemy_attack_ceroba_flower_pillars_bullet);
    i++;
}

alarm[0] = 30;
