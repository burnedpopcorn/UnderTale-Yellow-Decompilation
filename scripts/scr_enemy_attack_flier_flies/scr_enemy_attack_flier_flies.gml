function scr_enemy_attack_flier_flies()
{
    global.attack_counter_max = 60;
    
    if (global.attack_counter == 0)
    {
        random_generator = irandom_range(1, 4);
        
        if (random_generator == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 13, obj_dialogue_box_battle_transformation_any.bbox_top + 11, obj_battle_enemy_attack_flier_fly_top_left);
        else if (random_generator == 2)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 13, obj_dialogue_box_battle_transformation_any.bbox_top + 11, obj_battle_enemy_attack_flier_fly_top_right);
        else if (random_generator == 3)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 13, obj_dialogue_box_battle_transformation_any.bbox_bottom - 11, obj_battle_enemy_attack_flier_fly_bottom_left);
        else if (random_generator == 4)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 13, obj_dialogue_box_battle_transformation_any.bbox_bottom - 11, obj_battle_enemy_attack_flier_fly_bottom_right);
    }
}
