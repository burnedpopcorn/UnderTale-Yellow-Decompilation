function scr_start_enemy_attacking_macro()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    
    if (global.turns_passed == 0)
    {
        instance_create(233, 20, obj_quote_bubble_battle_6_reverse);
        instance_create(0, 0, obj_quote_battle_macro_froggit);
    }
    else
    {
        instance_create(410, 20, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_macro_froggit);
    }
    
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
