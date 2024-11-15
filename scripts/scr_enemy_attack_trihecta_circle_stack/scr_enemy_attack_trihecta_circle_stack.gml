function scr_enemy_attack_trihecta_circle_stack()
{
    var green, random_pos, random_side, x_side;
    
    if (!instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_lead))
    {
        green = 0;
        random_pos = irandom_range(0, 2);
        random_side = irandom_range(0, 1);
        
        if (random_side == 0)
            x_side = obj_dialogue_box_battle_transformation_any.bbox_left + 5 + 21;
        else
            x_side = obj_dialogue_box_battle_transformation_any.bbox_right - 5 - 20;
        
        if (random_pos == 0)
        {
            if (green == 1)
            {
            }
            
            instance_create(x_side, obj_dialogue_box_battle_transformation_any.bbox_top + 5 + 42, obj_battle_enemy_attack_trihecta_circle_stack_lead);
            instance_create(x_side, obj_dialogue_box_battle_transformation_any.bbox_top + 5 + 84, obj_battle_enemy_attack_trihecta_circle_stack_white);
        }
        else if (random_pos == 1)
        {
            if (green == 1)
            {
            }
            
            instance_create(x_side, obj_dialogue_box_battle_transformation_any.bbox_top + 5, obj_battle_enemy_attack_trihecta_circle_stack_lead);
            instance_create(x_side, obj_dialogue_box_battle_transformation_any.bbox_top + 5 + 84, obj_battle_enemy_attack_trihecta_circle_stack_white);
        }
        else if (random_pos == 2)
        {
            if (green == 1)
            {
            }
            
            instance_create(x_side, obj_dialogue_box_battle_transformation_any.bbox_top + 5, obj_battle_enemy_attack_trihecta_circle_stack_lead);
            instance_create(x_side, obj_dialogue_box_battle_transformation_any.bbox_top + 5 + 42, obj_battle_enemy_attack_trihecta_circle_stack_white);
        }
    }
}
