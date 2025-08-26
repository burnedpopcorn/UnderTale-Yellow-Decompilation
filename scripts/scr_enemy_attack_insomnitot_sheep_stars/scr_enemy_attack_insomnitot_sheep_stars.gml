function scr_enemy_attack_insomnitot_sheep_stars()
{
    var distance_factor = 24;
    var random_direction = irandom_range(0, 1);
    
    if (random_direction == 0)
    {
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 70, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_fence);
        
        for (i = 0; i <= 5; i += 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 10 + (distance_factor * i), obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_sheep);
        
        with (obj_battle_enemy_attack_insomnitot_fence)
            attack_direction = 1;
        
        with (obj_battle_enemy_attack_insomnitot_sheep)
            attack_direction = -1;
    }
    else if (random_direction == 1)
    {
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 70, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_fence);
        
        for (i = 0; i <= 5; i += 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 10 - (distance_factor * i), obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_sheep);
        
        with (obj_battle_enemy_attack_insomnitot_fence)
            attack_direction = -1;
        
        with (obj_battle_enemy_attack_insomnitot_sheep)
            attack_direction = 1;
    }
}
