function scr_enemy_attack_flier_flies_drawing()
{
    global.attack_counter_max = 60;
    
    if (global.attack_counter == 0)
    {
        var distance = -13;
        var distance_2 = 20;
        var max_variations = 4;
        var random_number_1 = irandom_range(0, max_variations);
        var random_number_2 = irandom_range(0, max_variations - 1);
        
        if (random_number_2 >= random_number_1)
            random_number_2 += 1;
        
        instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * random_number_1), obj_dialogue_box_battle_transformation_any.bbox_bottom + distance_2, obj_battle_enemy_attack_flier_fly_drawing);
        instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * random_number_2), obj_dialogue_box_battle_transformation_any.bbox_bottom + distance_2, obj_battle_enemy_attack_flier_fly_drawing);
    }
}
