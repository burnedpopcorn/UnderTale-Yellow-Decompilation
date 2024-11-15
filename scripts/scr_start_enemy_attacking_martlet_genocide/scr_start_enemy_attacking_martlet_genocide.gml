function scr_start_enemy_attacking_martlet_genocide()
{
    var enemy_mode;
    
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 2:
            scr_audio_fade_out_battle(1000);
            instance_create(0, 0, obj_quote_battle_martlet_genocide_attack);
            break;
        
        case 3:
            if (global.turns_passed == 0 && global.enemy_mode_previous == 4)
                scr_audio_fade_out_battle(1000);
            
            instance_create(0, 0, obj_quote_battle_martlet_genocide_fight);
            break;
    }
    
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
