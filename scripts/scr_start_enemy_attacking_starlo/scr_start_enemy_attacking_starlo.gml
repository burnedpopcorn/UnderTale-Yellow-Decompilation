function scr_start_enemy_attacking_starlo()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    
    if (global.turns_passed >= 18)
    {
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        scr_audio_fade_out(210, 750);
        
        if (global.action_1_selected_count >= 1)
        {
            instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
            instance_create(0, 0, obj_quote_battle_starlo_outro_alt);
            global.action_amount = 1;
            global.action_1_important = true;
        }
        else
        {
            instance_create(319, 320, obj_battle_enemy_attack_starlo_outro_target);
        }
    }
    else if (global.turns_passed == 17)
    {
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create(0, 0, obj_quote_battle_starlo_outro_1);
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        scr_audio_fade_out(210, 750);
        global.action_amount = 1;
        global.action_1_important = true;
    }
    else if (global.turns_passed == 0 || global.turns_passed == 10)
    {
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        
        with (obj_heart_battle_fighting_parent)
            moveable = true;
    }
    else if (global.turns_passed == 9)
    {
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        
        if (obj_starlo_boss_body.starlo_quote_noloop_1 == false)
        {
            obj_starlo_boss_body.starlo_quote_noloop_1 = true;
            instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
            instance_create(0, 0, obj_quote_battle_starlo);
        }
        else
        {
            with (obj_heart_battle_fighting_parent)
                moveable = true;
        }
    }
    else
    {
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create(0, 0, obj_quote_battle_starlo);
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
    }
}
