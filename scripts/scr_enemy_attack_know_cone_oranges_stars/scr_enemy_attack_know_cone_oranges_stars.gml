function scr_enemy_attack_know_cone_oranges_stars()
{
    global.attack_counter_max = 40;
    
    if (global.attack_counter == 0)
    {
        var distance_factor = 15;
        var random_generator_1 = irandom_range(0, 1);
        var random_generator_2 = irandom_range(0, 4);
        
        if (random_generator_1 == 0)
        {
            if (random_generator_2 > 0)
                instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_top - distance_factor, obj_battle_enemy_attack_know_cone_orange_white);
            else
                instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_top - distance_factor, obj_battle_enemy_attack_know_cone_orange);
        }
        else if (random_generator_1 == 1)
        {
            if (random_generator_2 > 0)
                instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + distance_factor, obj_battle_enemy_attack_know_cone_orange_white);
            else
                instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + distance_factor, obj_battle_enemy_attack_know_cone_orange);
        }
        
        var distance = 20;
        var max_variations = 4;
        var sector = irandom_range(0, 1);
        var sector_2 = irandom_range(0, 1);
        
        if (sector == 0)
        {
            if (sector_2 == 0)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance, (obj_dialogue_box_battle_transformation_any.bbox_top - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_bottom + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_top) / max_variations) * irandom_range(0, max_variations)), obj_battle_enemy_attack_insomnitot_star);
            else if (sector_2 == 1)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance, (obj_dialogue_box_battle_transformation_any.bbox_top - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_bottom + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_top) / max_variations) * irandom_range(0, max_variations)), obj_battle_enemy_attack_insomnitot_star);
        }
        else if (sector == 1)
        {
            if (sector_2 == 0)
                instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * irandom_range(0, max_variations)), obj_dialogue_box_battle_transformation_any.bbox_top - distance, obj_battle_enemy_attack_insomnitot_star);
            else if (sector_2 == 1)
                instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * irandom_range(0, max_variations)), obj_dialogue_box_battle_transformation_any.bbox_bottom + distance, obj_battle_enemy_attack_insomnitot_star);
        }
    }
}
