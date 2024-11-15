function scr_enemy_attack_flier_flies_double()
{
    global.attack_counter_max = 60;
    
    if (global.attack_counter == 0)
    {
        random_generator = irandom_range(1, 4);
        random_generator_2 = irandom_range(1, 3);
        
        if (random_generator_2 >= random_generator)
            random_generator_2 += 1;
        
        if (random_generator == 1 || random_generator_2 == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 13, obj_dialogue_box_battle_transformation_any.bbox_top + 11, obj_battle_enemy_attack_flier_fly_top_left);
        
        if (random_generator == 2 || random_generator_2 == 2)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 13, obj_dialogue_box_battle_transformation_any.bbox_top + 11, obj_battle_enemy_attack_flier_fly_top_right);
        
        if (random_generator == 3 || random_generator_2 == 3)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 13, obj_dialogue_box_battle_transformation_any.bbox_bottom - 11, obj_battle_enemy_attack_flier_fly_bottom_left);
        
        if (random_generator == 4 || random_generator_2 == 4)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 13, obj_dialogue_box_battle_transformation_any.bbox_bottom - 11, obj_battle_enemy_attack_flier_fly_bottom_right);
    }
}
