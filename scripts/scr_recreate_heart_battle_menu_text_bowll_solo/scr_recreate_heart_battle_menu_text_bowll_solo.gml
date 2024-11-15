function scr_recreate_heart_battle_menu_text_bowll_solo()
{
    var last_text_move_select, heart_position, random_number, random_text_move_select;
    
    last_text_move_select = global.last_text_move_select;
    heart_position = script_execute(scr_return_heart_battle_menu_position);
    
    if (text_deadlock_1 == true)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, text_deadlock_contents_1);
    }
    else if (last_text_move_select == 0)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_intro);
        text_deadlock_contents_1 = 3004;
        text_deadlock_1 = true;
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(1, 2);
        
        if (random_number == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_1);
            text_deadlock_contents_1 = 3016;
        }
        else if (random_number == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_1_v2);
            text_deadlock_contents_1 = 3018;
        }
        
        text_deadlock_1 = true;
    }
    else if (global.enemy_sparing == true)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_sparing);
        text_deadlock_contents_1 = 3030;
        text_deadlock_1 = true;
    }
    else if (heart_position == "2122")
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_action_3);
        text_deadlock_contents_1 = 3008;
        text_deadlock_1 = true;
    }
    else
    {
        random_text_move_select = irandom_range(1, 4);
        
        if (random_text_move_select == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1);
            text_deadlock_contents_1 = 3020;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2);
            text_deadlock_contents_1 = 3021;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 3)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
            text_deadlock_contents_1 = 3022;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 4)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_4);
            text_deadlock_contents_1 = 3023;
            text_deadlock_1 = true;
        }
    }
}
