function scr_enemy_attack_know_cone_blueberries()
{
    global.attack_counter_max = 20;
    
    if (global.attack_counter == 0)
    {
        var distance_factor = 15;
        var random_generator_1 = irandom_range(0, 1);
        var random_generator_2 = irandom_range(0, 4);
        
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
