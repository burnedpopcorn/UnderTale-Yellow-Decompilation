function scr_start_enemy_attacking_martlet_genocide_final()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create_depth(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), -701, obj_heart_battle_fighting_yellow_final);
    obj_heart_battle_fighting_parent.moveable = true;
    
    if (global.hotland_flag[9] >= 2)
    {
        if (global.enemy_attack == "Martlet Phase 2 Blocks" || global.enemy_attack == "Martlet Phase 2 Blocks 2" || global.enemy_attack == "Martlet Phase 2 Blocks 3" || global.enemy_attack == "Martlet Phase 2 Blocks 4")
        {
            obj_heart_battle_fighting_parent.moveable = false;
            instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
            instance_create(0, 0, obj_quote_battle_martlet_genocide_final_2_midfight);
        }
    }
}
