function scr_start_enemy_attacking_martlet_pacifist()
{
    var enemy_mode;
    
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 2:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_hit);
            break;
        
        case 3:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_attack);
            break;
        
        case 4:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_pacifist);
            break;
        
        case 5:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_true_pacifist);
            break;
        
        case 6:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_insult_1);
            break;
        
        case 7:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_insult_2);
            break;
    }
    
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
