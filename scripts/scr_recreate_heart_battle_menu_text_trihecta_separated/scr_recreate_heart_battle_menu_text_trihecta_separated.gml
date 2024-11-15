function scr_recreate_heart_battle_menu_text_trihecta_separated()
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
    else if ((global.enemy_low_hp == true && global.enemy_dead == false && global.enemy_spared == false) || (global.enemy_low_hp_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false) || (global.enemy_low_hp_3 == true && global.enemy_dead_3 == false && global.enemy_spared_3 == false))
    {
        random_number = irandom_range(1, 3);
        
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
        else if (random_number == 3)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_1_v3);
            text_deadlock_contents_1 = 3019;
        }
        
        text_deadlock_1 = true;
    }
    else
    {
        random_number = irandom_range(1 + sign(global.enemy_dead + global.enemy_spared), 3 - sign(global.enemy_dead_3 + global.enemy_spared_3));
        
        if (random_number == 2 && (global.enemy_dead_2 == true || global.enemy_spared_2 == true))
        {
            random_number = irandom_range(1 + sign(global.enemy_dead + global.enemy_spared), 2 - sign(global.enemy_dead_3 + global.enemy_spared_3));
            
            if (random_number == 2)
                random_number = 3;
        }
        
        if (random_number == 1)
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2 + global.enemy_dead_3 + global.enemy_spared_3) < 2)
                random_text_move_select = irandom_range(1, 3);
            else
                random_text_move_select = irandom_range(1, 2);
        }
        else if (random_number == 2)
        {
            if ((global.enemy_dead + global.enemy_spared + global.enemy_dead_3 + global.enemy_spared_3) < 2)
                random_text_move_select = irandom_range(1, 3);
            else
                random_text_move_select = irandom_range(1, 2);
        }
        else if (random_number == 3)
        {
            if ((global.enemy_dead + global.enemy_spared + global.enemy_dead_2 + global.enemy_spared_2) < 2)
                random_text_move_select = irandom_range(1, 3);
            else
                random_text_move_select = irandom_range(1, 2);
        }
        
        if (random_number == 1)
        {
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
        }
        else if (random_number == 2)
        {
            if (random_text_move_select == 1)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1_v2);
                text_deadlock_contents_1 = 3039;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 2)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2_v2);
                text_deadlock_contents_1 = 3040;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 3)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
                text_deadlock_contents_1 = 3022;
                text_deadlock_1 = true;
            }
        }
        else if (random_number == 3)
        {
            if (random_text_move_select == 1)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1_v3);
                text_deadlock_contents_1 = 3056;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 2)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2_v3);
                text_deadlock_contents_1 = 3057;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 3)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
                text_deadlock_contents_1 = 3022;
                text_deadlock_1 = true;
            }
        }
    }
}
