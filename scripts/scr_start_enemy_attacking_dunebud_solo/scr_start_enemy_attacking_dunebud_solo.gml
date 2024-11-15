function scr_start_enemy_attacking_dunebud_solo()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    
    if (global.enemy_attack == "Dunebud Sandcastle")
        instance_create(264, 16, obj_quote_bubble_battle_yellow_above);
    else
        instance_create(402, 132, obj_quote_bubble_battle_yellow);
    
    instance_create(0, 0, obj_quote_battle_dunebud_a);
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
