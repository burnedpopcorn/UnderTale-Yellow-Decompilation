function scr_enemy_attack_flier_swarm()
{
    var distance_x, distance_y, random_number_x, random_number_y, sector, sector_2;
    
    global.attack_counter_max = 30;
    
    if (global.attack_counter == 0)
    {
        distance_x = 13;
        distance_y = 11;
        random_number_x = irandom_range(obj_dialogue_box_battle_transformation_any.bbox_left + 13, obj_dialogue_box_battle_transformation_any.bbox_right - 13);
        random_number_y = irandom_range(obj_dialogue_box_battle_transformation_any.bbox_top + 11, obj_dialogue_box_battle_transformation_any.bbox_bottom - 11);
        sector = irandom_range(0, 1);
        sector_2 = irandom_range(0, 1);
        
        if (sector == 0)
        {
            if (sector_2 == 0)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_x, random_number_y, obj_battle_enemy_attack_flier_swarm_horizontal);
            else if (sector_2 == 1)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, random_number_y, obj_battle_enemy_attack_flier_swarm_horizontal);
        }
        else if (sector == 1)
        {
            if (sector_2 == 0)
                instance_create(random_number_x, obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_flier_swarm_vertical);
            else if (sector_2 == 1)
                instance_create(random_number_x, obj_dialogue_box_battle_transformation_any.bbox_bottom + distance_y, obj_battle_enemy_attack_flier_swarm_vertical);
        }
    }
}
