function scr_enemy_attack_frostermit_snowflakes_blueberries()
{
    var distance_x, distance_y, max_variations, distance_factor, random_generator_1, random_generator_2;
    
    global.attack_counter_max = 40;
    
    if (global.attack_counter == 0)
    {
        distance_x = -15;
        distance_y = 20;
        max_variations = 6;
        instance_create(round((obj_dialogue_box_battle_transformation_any.bbox_left - distance_x) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance_x * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * irandom_range(0, max_variations))), obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_frostermit_snowflakes);
        distance_factor = 15;
        random_generator_1 = irandom_range(0, 1);
        random_generator_2 = irandom_range(0, 4);
        
        if (random_generator_1 == 0)
        {
            if (random_generator_2 > 0)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_factor, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_know_cone_blueberry_white);
            else
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_factor, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_know_cone_blueberry);
        }
        else if (random_generator_1 == 1)
        {
            if (random_generator_2 > 0)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_factor, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_know_cone_blueberry_white);
            else
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_factor, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_know_cone_blueberry);
        }
    }
}
