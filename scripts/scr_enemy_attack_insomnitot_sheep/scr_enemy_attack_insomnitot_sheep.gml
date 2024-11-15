function scr_enemy_attack_insomnitot_sheep()
{
    var distance_factor, random_direction, random_spawn;
    
    distance_factor = 24;
    random_direction = irandom_range(0, 1);
    random_spawn = irandom_range(0, 4);
    
    if (random_direction == 0)
    {
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 70, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_fence);
        
        for (i = 0; i <= 5; i += 1)
        {
            if (i != random_spawn && (i - 1) != random_spawn)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 10 + (distance_factor * i), obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_sheep);
        }
        
        with (obj_battle_enemy_attack_insomnitot_fence)
            attack_direction = 1;
        
        with (obj_battle_enemy_attack_insomnitot_sheep)
            attack_direction = -1;
    }
    else if (random_direction == 1)
    {
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 70, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_fence);
        
        for (i = 0; i <= 5; i += 1)
        {
            if (i != random_spawn && (i - 1) != random_spawn)
                instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 10 - (distance_factor * i), obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_insomnitot_sheep);
        }
        
        with (obj_battle_enemy_attack_insomnitot_fence)
            attack_direction = -1;
        
        with (obj_battle_enemy_attack_insomnitot_sheep)
            attack_direction = 1;
    }
}
