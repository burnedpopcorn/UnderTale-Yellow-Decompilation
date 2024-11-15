function scr_enemy_attack_flier_swarm_double()
{
    var random_number_x, random_number_y, sector, sector_2;
    
    global.attack_counter_max = 30;
    
    if (global.attack_counter == 0)
    {
        distance_x = 13;
        distance_y = 11;
        random_generator_1 = irandom_range(1, 4);
        random_generator_2 = irandom_range(1, 3);
        
        if (random_generator_2 >= random_generator_1)
            random_generator_2 += 1;
        
        for (i = 1; i <= 2; i += 1)
        {
            random_number_x = irandom_range(obj_dialogue_box_battle_transformation_any.bbox_left + 13, obj_dialogue_box_battle_transformation_any.bbox_right - 13);
            random_number_y = irandom_range(obj_dialogue_box_battle_transformation_any.bbox_top + 11, obj_dialogue_box_battle_transformation_any.bbox_bottom - 11);
            
            if (i == 1)
                random_generator = random_generator_1;
            else if (i == 2)
                random_generator = random_generator_2;
            
            if (random_generator == 1)
            {
                sector = 0;
                sector_2 = 0;
            }
            else if (random_generator == 2)
            {
                sector = 0;
                sector_2 = 1;
            }
            else if (random_generator == 3)
            {
                sector = 1;
                sector_2 = 0;
            }
            else if (random_generator == 4)
            {
                sector = 1;
                sector_2 = 1;
            }
            
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
}
