script_execute(scr_controls_battle_item);

if (key_select)
{
    if (global.item_page_count == 1)
    {
        if (global.item_number_row == 1 && global.item_number_column == 1)
            global.item_number_use = 1;
        else if (global.item_number_row == 2 && global.item_number_column == 1)
            global.item_number_use = 2;
        else if (global.item_number_row == 1 && global.item_number_column == 2)
            global.item_number_use = 3;
        else if (global.item_number_row == 2 && global.item_number_column == 2)
            global.item_number_use = 4;
    }
    else if (global.item_page_count == 2)
    {
        if (global.item_number_row == 1 && global.item_number_column == 1)
            global.item_number_use = 5;
        else if (global.item_number_row == 2 && global.item_number_column == 1)
            global.item_number_use = 6;
        else if (global.item_number_row == 1 && global.item_number_column == 2)
            global.item_number_use = 7;
        else if (global.item_number_row == 2 && global.item_number_column == 2)
            global.item_number_use = 8;
    }
    
    instance_create(0, 0, obj_dialogue_battle_action_selected_item);
    audio_play_sound(snd_battle_item_weapon_select, 20, false);
    
    with (obj_text_battle_move_selected_item_parent)
        instance_destroy();
    
    with (obj_heart_battle_menu_item)
        instance_destroy();
}

if (key_revert && key_select == 0)
{
    with (obj_heart_battle_menu)
    {
        no_loop = false;
        image_alpha = 1;
    }
    
    with (obj_text_battle_move_selected_item_parent)
        instance_destroy();
    
    instance_destroy();
}

if (key_select == 0 && key_revert == 0)
{
    if (key_right && key_left == 0 && key_down == 0 && key_up == 0 && global.item_slot[2] != "Nothing")
    {
        if (global.item_number_column == 1)
        {
            if (global.item_number_row == 1)
            {
                if (global.item_page_count == 2 && global.item_slot[6] == "Nothing")
                {
                    global.item_page_count = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else
                {
                    global.item_number_row = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_row == 2)
            {
                if (global.item_page_count == 1 && global.item_slot[5] != "Nothing")
                {
                    global.item_page_count = 2;
                    global.item_number_row = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 1)
                {
                    global.item_number_row = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2)
                {
                    global.item_page_count = 1;
                    global.item_number_row = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
        }
        else if (global.item_number_column == 2)
        {
            if (global.item_number_row == 1)
            {
                if (global.item_page_count == 1 && global.item_slot[4] == "Nothing")
                {
                    global.item_number_row = 2;
                    global.item_number_column = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2 && global.item_slot[8] == "Nothing")
                {
                    global.item_number_row = 2;
                    global.item_number_column = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else
                {
                    global.item_number_row = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_row == 2)
            {
                if (global.item_page_count == 1 && global.item_slot[5] == "Nothing")
                {
                    global.item_number_row = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 1)
                {
                    global.item_page_count = 2;
                    global.item_number_row = 1;
                    global.item_number_column = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2)
                {
                    global.item_page_count = 1;
                    global.item_number_row = 1;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
        }
    }
    
    if (key_left && key_right == 0 && key_down == 0 && key_up == 0 && global.item_slot[2] != "Nothing")
    {
        if (global.item_number_column == 1)
        {
            if (global.item_number_row == 1)
            {
                if (global.item_page_count == 1)
                {
                    if (global.item_slot[6] != "Nothing")
                    {
                        global.item_page_count = 2;
                        global.item_number_row = 2;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else if (global.item_slot[5] != "Nothing")
                    {
                        global.item_page_count = 2;
                        global.item_number_row = 1;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else if (global.item_slot[5] == "Nothing")
                    {
                        global.item_number_row = 2;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                }
                else if (global.item_page_count == 2)
                {
                    global.item_page_count = 1;
                    global.item_number_row = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_row == 2)
            {
                global.item_number_row = 1;
                audio_play_sound(snd_mainmenu_select, 20, false);
            }
        }
        else if (global.item_number_column == 2)
        {
            if (global.item_number_row == 1)
            {
                if (global.item_page_count == 1)
                {
                    if (global.item_slot[8] != "Nothing")
                    {
                        global.item_page_count = 2;
                        global.item_number_row = 2;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else if (global.item_slot[7] != "Nothing")
                    {
                        global.item_page_count = 2;
                        global.item_number_row = 1;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else if (global.item_slot[6] != "Nothing")
                    {
                        global.item_page_count = 2;
                        global.item_number_row = 2;
                        global.item_number_column = 1;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else if (global.item_slot[5] != "Nothing")
                    {
                        global.item_page_count = 2;
                        global.item_number_row = 1;
                        global.item_number_column = 1;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else if (global.item_slot[4] != "Nothing")
                    {
                        global.item_number_row = 2;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                    else
                    {
                        global.item_number_row = 2;
                        global.item_number_column = 1;
                        audio_play_sound(snd_mainmenu_select, 20, false);
                    }
                }
                else if (global.item_page_count == 2)
                {
                    global.item_page_count = 1;
                    global.item_number_row = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_row == 2)
            {
                global.item_number_row = 1;
                audio_play_sound(snd_mainmenu_select, 20, false);
            }
        }
    }
    
    if (key_down && key_right == 0 && key_left == 0 && key_up == 0 && global.item_slot[3] != "Nothing")
    {
        if (global.item_number_row == 1)
        {
            if (global.item_number_column == 1)
            {
                if (global.item_page_count == 1 && global.item_slot[3] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2 && global.item_slot[7] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_column == 2)
            {
                global.item_number_column = 1;
                audio_play_sound(snd_mainmenu_select, 20, false);
            }
        }
        else if (global.item_number_row == 2)
        {
            if (global.item_number_column == 1)
            {
                if (global.item_page_count == 1 && global.item_slot[4] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2 && global.item_slot[8] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_column == 2)
            {
                global.item_number_column = 1;
                audio_play_sound(snd_mainmenu_select, 20, false);
            }
        }
    }
    
    if (key_up && key_right == 0 && key_left == 0 && key_down == 0 && global.item_slot[3] != "Nothing")
    {
        if (global.item_number_row == 1)
        {
            if (global.item_number_column == 1)
            {
                if (global.item_page_count == 1 && global.item_slot[3] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2 && global.item_slot[7] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_column == 2)
            {
                global.item_number_column = 1;
                audio_play_sound(snd_mainmenu_select, 20, false);
            }
        }
        else if (global.item_number_row == 2)
        {
            if (global.item_number_column == 1)
            {
                if (global.item_page_count == 1 && global.item_slot[4] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
                else if (global.item_page_count == 2 && global.item_slot[8] != "Nothing")
                {
                    global.item_number_column = 2;
                    audio_play_sound(snd_mainmenu_select, 20, false);
                }
            }
            else if (global.item_number_column == 2)
            {
                global.item_number_column = 1;
                audio_play_sound(snd_mainmenu_select, 20, false);
            }
        }
    }
}

if (global.item_number_row == 1)
    x = obj_dialogue_box_battle.x + 44;
else if (global.item_number_row == 2)
    x = obj_dialogue_box_battle.x + 300;

if (global.item_number_column == 1)
    y = obj_dialogue_box_battle.y + 36;
else if (global.item_number_column == 2)
    y = obj_dialogue_box_battle.y + 68;

if (key_select == 0 && key_revert == 0)
{
    if (global.item_page_count == 1)
    {
        if (global.item_slot[1] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_1))
            instance_create(0, 0, obj_text_battle_move_selected_item_1);
        
        if (global.item_slot[2] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_2))
            instance_create(0, 0, obj_text_battle_move_selected_item_2);
        
        if (global.item_slot[3] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_3))
            instance_create(0, 0, obj_text_battle_move_selected_item_3);
        
        if (global.item_slot[4] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_4))
            instance_create(0, 0, obj_text_battle_move_selected_item_4);
        
        if (instance_exists(obj_text_battle_move_selected_item_5))
        {
            with (obj_text_battle_move_selected_item_5)
                instance_destroy();
        }
        
        if (instance_exists(obj_text_battle_move_selected_item_6))
        {
            with (obj_text_battle_move_selected_item_6)
                instance_destroy();
        }
        
        if (instance_exists(obj_text_battle_move_selected_item_7))
        {
            with (obj_text_battle_move_selected_item_7)
                instance_destroy();
        }
        
        if (instance_exists(obj_text_battle_move_selected_item_8))
        {
            with (obj_text_battle_move_selected_item_8)
                instance_destroy();
        }
    }
    else if (global.item_page_count == 2)
    {
        if (instance_exists(obj_text_battle_move_selected_item_1))
        {
            with (obj_text_battle_move_selected_item_1)
                instance_destroy();
        }
        
        if (instance_exists(obj_text_battle_move_selected_item_2))
        {
            with (obj_text_battle_move_selected_item_2)
                instance_destroy();
        }
        
        if (instance_exists(obj_text_battle_move_selected_item_3))
        {
            with (obj_text_battle_move_selected_item_3)
                instance_destroy();
        }
        
        if (instance_exists(obj_text_battle_move_selected_item_4))
        {
            with (obj_text_battle_move_selected_item_4)
                instance_destroy();
        }
        
        if (global.item_slot[5] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_5))
            instance_create(0, 0, obj_text_battle_move_selected_item_5);
        
        if (global.item_slot[6] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_6))
            instance_create(0, 0, obj_text_battle_move_selected_item_6);
        
        if (global.item_slot[7] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_7))
            instance_create(0, 0, obj_text_battle_move_selected_item_7);
        
        if (global.item_slot[8] != "Nothing" && !instance_exists(obj_text_battle_move_selected_item_8))
            instance_create(0, 0, obj_text_battle_move_selected_item_8);
    }
}
