function scr_start_enemy_attacking_ceroba()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    
    if (global.attack_cycle < 10)
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
    else if (global.attack_cycle > 10)
        instance_create_depth(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), -701, obj_heart_battle_fighting_yellow_final);
    
    if (global.turns_passed >= 4 && global.hotland_flag[2] == 0)
    {
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba);
    }
    else
    {
        obj_heart_battle_fighting_parent.moveable = true;
    }
}
