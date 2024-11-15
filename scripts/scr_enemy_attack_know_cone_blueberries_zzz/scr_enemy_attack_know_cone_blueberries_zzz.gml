function scr_enemy_attack_know_cone_blueberries_zzz()
{
    var distance_factor, random_generator_1, random_generator_2;
    
    global.attack_counter_max = 40;
    
    if (global.attack_counter == 0)
    {
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
        
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + 8 + distance_factor, obj_battle_enemy_attack_insomnitot_zzz_big);
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + 8 + (distance_factor * 2) + obj_battle_enemy_attack_insomnitot_zzz_big.sprite_height, obj_battle_enemy_attack_insomnitot_zzz_medium);
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + 8 + (distance_factor * 3) + (obj_battle_enemy_attack_insomnitot_zzz_medium.sprite_height * 2), obj_battle_enemy_attack_insomnitot_zzz_small);
    }
}
