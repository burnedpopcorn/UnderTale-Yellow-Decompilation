function scr_start_enemy_attacking_guardener()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
    
    if (global.turns_passed >= 0)
    {
        if (global.route == 2 && global.turns_passed == 10 && global.enemy_mode == 1)
        {
            instance_create(0, 0, obj_steamworks_29_in_battle_cutscene_3);
        }
        else if (global.enemy_mode < 2)
        {
            instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
            instance_create(0, 0, obj_quote_battle_guardener);
        }
        else if (global.enemy_mode == 2)
        {
            obj_heart_battle_fighting_red.moveable = true;
        }
    }
    else
    {
        obj_heart_battle_fighting_red.image_alpha = 0;
    }
}
