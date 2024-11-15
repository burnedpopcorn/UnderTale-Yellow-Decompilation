function scr_enemy_attack_frostermit_ice_cubes()
{
    var distance_y, max_variations, random_result, place_meetings_max, continue_loop, place_meetings;
    
    if (instance_number(obj_battle_enemy_attack_frostermit_ice_cube) < 8)
        global.attack_counter_max = 15;
    else
        global.attack_counter_max = 40;
    
    if (global.attack_counter == 0)
    {
        if (instance_number(obj_battle_enemy_attack_frostermit_ice_cube) >= 9)
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
        else
        {
            distance_y = 20;
            max_variations = 4;
            random_result = irandom_range(0, max_variations);
            
            if (instance_exists(obj_battle_enemy_attack_frostermit_ice_cube))
            {
                if (!instance_exists(obj_battle_enemy_attack_frostermit_ice_cube_check))
                    instance_create(0, 0, obj_battle_enemy_attack_frostermit_ice_cube_check);
                
                with (obj_battle_enemy_attack_frostermit_ice_cube_check)
                {
                    place_meetings_max = 3;
                    continue_loop = true;
                    
                    while (continue_loop == true)
                    {
                        place_meetings = 0;
                        
                        for (i = 0; i <= max_variations; i++)
                        {
                            if (place_meeting(obj_dialogue_box_battle_transformation_any.bbox_left + 5 + (17 * random_result), obj_dialogue_box_battle_transformation_any.bbox_top + 5 + (17 * i), obj_battle_enemy_attack_frostermit_ice_cube))
                                place_meetings += 1;
                        }
                        
                        if (place_meetings >= place_meetings_max)
                        {
                            random_result += 1;
                            
                            if (random_result > max_variations)
                                random_result = 0;
                        }
                        else
                        {
                            continue_loop = false;
                        }
                    }
                }
            }
            
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 5 + (17 * random_result), obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_frostermit_ice_cube);
        }
    }
}
