function scr_start_enemy_no_attack_axis()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_axis);
    instance_create(0, 0, obj_battle_enemy_attack_axis_shield);
    
    if (global.route == 1 && global.geno_complete[3] == false)
    {
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_axis);
    }
    else if (global.route == 2 && global.action_1_selected_count > 0)
    {
        scr_audio_fade_out(40, 1000);
        instance_create(0, 0, obj_steamworks_35_in_battle_cutscene_4);
        global.action_1_important = false;
    }
    else
    {
        with (obj_battlebox_controller_axis)
            event_user(0);
    }
}
