function scr_enemy_attack_trihecta_circle_reflect()
{
    var distance_x, distance_y, random_number;
    
    if (!instance_exists(obj_battle_enemy_attack_trihecta_circle_reflect))
    {
        distance_x = 16;
        distance_y = 16;
        random_number = irandom_range(1, 4);
        
        if (random_number != 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 4 + distance_x, obj_dialogue_box_battle_transformation_any.bbox_top + 4 + distance_y, obj_battle_enemy_attack_trihecta_circle_reflect);
        
        if (random_number != 2)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 4 - distance_x, obj_dialogue_box_battle_transformation_any.bbox_top + 4 + distance_y, obj_battle_enemy_attack_trihecta_circle_reflect);
        
        if (random_number != 3)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 4 + distance_x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 4 - distance_y, obj_battle_enemy_attack_trihecta_circle_reflect);
        
        if (random_number != 4)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 4 - distance_x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 4 - distance_y, obj_battle_enemy_attack_trihecta_circle_reflect);
    }
}
