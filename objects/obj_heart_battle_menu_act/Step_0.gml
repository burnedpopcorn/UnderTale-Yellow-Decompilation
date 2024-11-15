var act_number, action_amount, enemy_count;

act_number = global.act_number;

if (act_number == 1)
    action_amount = global.action_amount;

if (act_number == 2)
    action_amount = global.action_amount_2;

if (act_number == 3)
    action_amount = global.action_amount_3;

enemy_count = global.enemy_count;
script_execute(scr_controls_battle_act);

if (instance_exists(obj_text_battle_move_selected_enemy_name_parent))
{
    for (counter = 0; counter < 2; counter += 1)
    {
        if (global.act_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_name))
            global.act_number = 2;
        
        if (global.act_number == 2 && !instance_exists(obj_text_battle_move_selected_enemy_name_2))
            global.act_number = 1;
        
        if (global.act_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_name))
            global.act_number = 3;
        
        if (global.act_number == 3 && !instance_exists(obj_text_battle_move_selected_enemy_name_3))
            global.act_number = 1;
    }
}
else if (!instance_exists(obj_text_battle_move_selected_enemy_name_parent))
{
    if (global.act_number_row == 2 && global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_5))
        global.act_number_row = 1;
    
    if (global.act_number_row == 1 && global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_4))
    {
        global.act_number_row = 2;
        global.act_number_column = 2;
    }
    
    if (global.act_number_row == 2 && global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_3))
        global.act_number_row = 1;
    
    if (global.act_number_row == 1 && global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_2))
    {
        global.act_number_row = 1;
        global.act_number_column = 1;
    }
    
    if (global.act_number_row == 2 && global.act_number_column == 1 && !instance_exists(obj_text_battle_move_selected_action_1))
        global.act_number_row = 1;
}

if (key_select)
{
    if (instance_exists(obj_text_battle_move_selected_enemy_name_parent))
    {
        instance_create(0, 0, obj_text_battle_move_selected_check);
        
        if (action_amount >= 5)
        {
            instance_create(0, 0, obj_text_battle_move_selected_action_1);
            instance_create(0, 0, obj_text_battle_move_selected_action_2);
            instance_create(0, 0, obj_text_battle_move_selected_action_3);
            instance_create(0, 0, obj_text_battle_move_selected_action_4);
            instance_create(0, 0, obj_text_battle_move_selected_action_5);
        }
        else if (action_amount >= 4)
        {
            instance_create(0, 0, obj_text_battle_move_selected_action_1);
            instance_create(0, 0, obj_text_battle_move_selected_action_2);
            instance_create(0, 0, obj_text_battle_move_selected_action_3);
            instance_create(0, 0, obj_text_battle_move_selected_action_4);
        }
        else if (action_amount >= 3)
        {
            instance_create(0, 0, obj_text_battle_move_selected_action_1);
            instance_create(0, 0, obj_text_battle_move_selected_action_2);
            instance_create(0, 0, obj_text_battle_move_selected_action_3);
        }
        else if (action_amount >= 2)
        {
            instance_create(0, 0, obj_text_battle_move_selected_action_1);
            instance_create(0, 0, obj_text_battle_move_selected_action_2);
        }
        else if (action_amount >= 1)
        {
            instance_create(0, 0, obj_text_battle_move_selected_action_1);
        }
        
        if (global.act_number_row == 2 && global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_5))
            global.act_number_row = 1;
        
        if (global.act_number_row == 1 && global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_4))
        {
            global.act_number_row = 2;
            global.act_number_column = 2;
        }
        
        if (global.act_number_row == 2 && global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_3))
            global.act_number_row = 1;
        
        if (global.act_number_row == 1 && global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_2))
        {
            global.act_number_row = 1;
            global.act_number_column = 2;
        }
        
        if (global.act_number_row == 2 && global.act_number_column == 1 && !instance_exists(obj_text_battle_move_selected_action_1))
            global.act_number_row = 1;
        
        with (obj_text_battle_move_selected_enemy_name_parent)
            instance_destroy();
        
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
    }
    else if (global.act_number_row == 1 && global.act_number_column == 1 && instance_exists(obj_text_battle_move_selected_check))
    {
        instance_create(0, 0, obj_dialogue_battle_action_selected_check);
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
        
        with (obj_heart_battle_menu_act)
            instance_destroy();
    }
    else if (global.act_number_row == 2 && global.act_number_column == 1 && instance_exists(obj_text_battle_move_selected_action_1))
    {
        instance_create(0, 0, obj_dialogue_battle_action_selected_action_1);
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
        
        with (obj_heart_battle_menu_act)
            instance_destroy();
    }
    else if (global.act_number_row == 1 && global.act_number_column == 2 && instance_exists(obj_text_battle_move_selected_action_2))
    {
        instance_create(0, 0, obj_dialogue_battle_action_selected_action_2);
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
        
        with (obj_heart_battle_menu_act)
            instance_destroy();
    }
    else if (global.act_number_row == 2 && global.act_number_column == 2 && instance_exists(obj_text_battle_move_selected_action_3))
    {
        instance_create(0, 0, obj_dialogue_battle_action_selected_action_3);
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
        
        with (obj_heart_battle_menu_act)
            instance_destroy();
    }
    else if (global.act_number_row == 1 && global.act_number_column == 3 && instance_exists(obj_text_battle_move_selected_action_4))
    {
        instance_create(0, 0, obj_dialogue_battle_action_selected_action_4);
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
        
        with (obj_heart_battle_menu_act)
            instance_destroy();
    }
    else if (global.act_number_row == 2 && global.act_number_column == 3 && instance_exists(obj_text_battle_move_selected_action_5))
    {
        instance_create(0, 0, obj_dialogue_battle_action_selected_action_5);
        audio_play_sound(snd_battle_item_weapon_select, 20, false);
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
        
        with (obj_heart_battle_menu_act)
            instance_destroy();
    }
}

if (key_revert && key_select == 0)
{
    if (instance_exists(obj_text_battle_move_selected_enemy_name_parent))
    {
        with (obj_heart_battle_menu)
        {
            no_loop = false;
            image_alpha = 1;
        }
        
        with (obj_text_battle_move_selected_enemy_name_parent)
            instance_destroy();
        
        instance_destroy();
    }
    else if (!instance_exists(obj_text_battle_move_selected_enemy_name_parent))
    {
        if (global.enemy_dead == false && global.enemy_spared == false)
            instance_create(0, 0, obj_text_battle_move_selected_enemy_name);
        
        if (enemy_count >= 2)
        {
            if (global.enemy_dead_2 == false && global.enemy_spared_2 == false)
                instance_create(0, 0, obj_text_battle_move_selected_enemy_name_2);
        }
        
        if (enemy_count >= 3)
        {
            if (global.enemy_dead_3 == false && global.enemy_spared_3 == false)
                instance_create(0, 0, obj_text_battle_move_selected_enemy_name_3);
        }
        
        with (obj_text_battle_move_selected_action_parent)
            instance_destroy();
    }
}

if (key_select == 0 && key_revert == 0)
{
    if (key_right && key_left == 0 && key_down == 0 && key_up == 0 && instance_exists(obj_text_battle_move_selected_action_1) && !instance_exists(obj_text_battle_move_selected_enemy_name_parent))
    {
        if (global.act_number_row >= 2)
        {
            global.act_number_row = 1;
        }
        else
        {
            global.act_number_row += 1;
            
            if (global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_5))
                global.act_number_column = 2;
            
            if (global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_3))
                global.act_number_column = 1;
        }
        
        audio_play_sound(snd_mainmenu_select, 20, false);
    }
    
    if (key_left && key_right == 0 && key_down == 0 && key_up == 0 && instance_exists(obj_text_battle_move_selected_action_1) && !instance_exists(obj_text_battle_move_selected_enemy_name_parent))
    {
        if (global.act_number_row <= 1)
        {
            global.act_number_row = 2;
            
            if (global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_5))
                global.act_number_column = 2;
            
            if (global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_3))
                global.act_number_column = 1;
        }
        else
        {
            global.act_number_row -= 1;
        }
        
        audio_play_sound(snd_mainmenu_select, 20, false);
    }
    
    if (key_down && key_right == 0 && key_left == 0 && key_up == 0)
    {
        if (instance_exists(obj_text_battle_move_selected_enemy_name_parent))
        {
            if (global.act_number >= 3)
                global.act_number = 1;
            else
                global.act_number += 1;
            
            check_sound = snd_ceroba_staff_lock;
            
            for (counter = 0; counter < 2; counter += 1)
            {
                if (global.act_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_name))
                {
                    global.act_number = 2;
                    check_sound += 1;
                }
                
                if (global.act_number == 2 && !instance_exists(obj_text_battle_move_selected_enemy_name_2))
                {
                    global.act_number = 3;
                    check_sound += 1;
                }
                
                if (global.act_number == 3 && !instance_exists(obj_text_battle_move_selected_enemy_name_3))
                {
                    global.act_number = 1;
                    check_sound += 1;
                }
            }
            
            if (check_sound < 2)
                audio_play_sound(snd_mainmenu_select, 20, false);
        }
        else if (!instance_exists(obj_text_battle_move_selected_enemy_name_parent))
        {
            if (global.act_number_column >= 3)
                global.act_number_column = 1;
            else
                global.act_number_column += 1;
            
            check_sound = snd_ceroba_staff_lock;
            counter = 0;
            
            if (global.act_number_row == 1)
            {
                while (counter < 2)
                {
                    if (global.act_number_column == 1 && !instance_exists(obj_text_battle_move_selected_check))
                    {
                        global.act_number_column = 2;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_2))
                    {
                        global.act_number_column = 3;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_4))
                    {
                        global.act_number_column = 1;
                        check_sound += 1;
                    }
                    
                    counter += 1;
                }
            }
            else if (global.act_number_row == 2)
            {
                while (counter < 2)
                {
                    if (global.act_number_column == 1 && !instance_exists(obj_text_battle_move_selected_action_1))
                    {
                        global.act_number_column = 2;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_3))
                    {
                        global.act_number_column = 3;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_5))
                    {
                        global.act_number_column = 1;
                        check_sound += 1;
                    }
                    
                    counter += 1;
                }
            }
            
            if (check_sound < 2)
                audio_play_sound(snd_mainmenu_select, 20, false);
        }
    }
    
    if (key_up && key_right == 0 && key_left == 0 && key_down == 0)
    {
        if (instance_exists(obj_text_battle_move_selected_enemy_name_parent))
        {
            if (global.act_number <= 1)
                global.act_number = 3;
            else
                global.act_number -= 1;
            
            check_sound = snd_ceroba_staff_lock;
            
            for (counter = 0; counter < 2; counter += 1)
            {
                if (global.act_number == 3 && !instance_exists(obj_text_battle_move_selected_enemy_name_3))
                {
                    global.act_number = 2;
                    check_sound += 1;
                }
                
                if (global.act_number == 2 && !instance_exists(obj_text_battle_move_selected_enemy_name_2))
                {
                    global.act_number = 1;
                    check_sound += 1;
                }
                
                if (global.act_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_name))
                {
                    global.act_number = 3;
                    check_sound += 1;
                }
            }
            
            if (check_sound < 2)
                audio_play_sound(snd_mainmenu_select, 20, false);
        }
        else if (!instance_exists(obj_text_battle_move_selected_enemy_name_parent))
        {
            if (global.act_number_column <= 1)
                global.act_number_column = 3;
            else
                global.act_number_column -= 1;
            
            check_sound = snd_ceroba_staff_lock;
            counter = 0;
            
            if (global.act_number_row == 1)
            {
                while (counter < 2)
                {
                    if (global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_4))
                    {
                        global.act_number_column = 2;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_2))
                    {
                        global.act_number_column = 1;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 1 && !instance_exists(obj_text_battle_move_selected_check))
                    {
                        global.act_number_column = 3;
                        check_sound += 1;
                    }
                    
                    counter += 1;
                }
            }
            else if (global.act_number_row == 2)
            {
                while (counter < 2)
                {
                    if (global.act_number_column == 3 && !instance_exists(obj_text_battle_move_selected_action_5))
                    {
                        global.act_number_column = 2;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 2 && !instance_exists(obj_text_battle_move_selected_action_3))
                    {
                        global.act_number_column = 1;
                        check_sound += 1;
                    }
                    
                    if (global.act_number_column == 1 && !instance_exists(obj_text_battle_move_selected_action_1))
                    {
                        global.act_number_column = 3;
                        check_sound += 1;
                    }
                    
                    counter += 1;
                }
            }
            
            if (check_sound < 2)
                audio_play_sound(snd_mainmenu_select, 20, false);
        }
    }
}

if (instance_exists(obj_text_battle_move_selected_enemy_name_parent))
{
    x = obj_dialogue_box_battle.x + 44;
    
    if (global.act_number == 1)
        y = obj_dialogue_box_battle.y + 36;
    else if (global.act_number == 2)
        y = obj_dialogue_box_battle.y + 68;
    else if (global.act_number == 3)
        y = obj_dialogue_box_battle.y + 100;
}
else if (!instance_exists(obj_text_battle_move_selected_enemy_name_parent))
{
    if (global.act_number_row == 1)
        x = obj_dialogue_box_battle.x + 44;
    else if (global.act_number_row == 2)
        x = obj_dialogue_box_battle.x + 300;
    
    if (global.act_number_column == 1)
        y = obj_dialogue_box_battle.y + 36;
    else if (global.act_number_column == 2)
        y = obj_dialogue_box_battle.y + 68;
    else if (global.act_number_column == 3)
        y = obj_dialogue_box_battle.y + 100;
}
