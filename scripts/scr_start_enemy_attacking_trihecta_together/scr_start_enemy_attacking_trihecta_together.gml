function scr_start_enemy_attacking_trihecta_together()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    var quote_position = irandom_range(0, 2);
    
    if (quote_position == 0)
    {
        instance_create(366, 136, obj_quote_bubble_battle_yellow_2);
    }
    else if (quote_position == 1)
    {
        instance_create(84, 70, obj_quote_bubble_battle_yellow_2_reverse);
    }
    else if (quote_position == 2)
    {
        if (obj_trihecta_together.sprite_index == spr_trihecta_tipping)
            instance_create(386, 10, obj_quote_bubble_battle_yellow_2);
        else
            instance_create(366, 10, obj_quote_bubble_battle_yellow_2);
    }
    
    obj_quote_bubble_battle.position = quote_position;
    instance_create(0, 0, obj_quote_battle_trihecta);
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
