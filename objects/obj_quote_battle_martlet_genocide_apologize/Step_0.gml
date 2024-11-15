script_execute(scr_controls_text);

if (key_revert_pressed)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
}

if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(scr_text_increase);
        script_execute(scr_talking_martlet);
    }
    else
    {
        can_talk = false;
    }
}
else
{
    can_talk = false;
    
    if (key_select_pressed)
    {
        if (message_current < message_end)
        {
            message_current += 1;
            message_length = string_length(message[message_current]);
            characters = 0;
            message_draw = "";
        }
        else if (global.action_1_selected_count >= 2)
        {
            if (!instance_exists(obj_battle_fade_out_screen))
            {
                instance_create(0, 0, obj_battle_justice_effect);
                instance_create(0, 0, obj_battle_fade_out_screen);
                global.snowdin_flag[21] = 0;
                global.snowdin_flag[13] = 3;
                global.enemy_spared = true;
            }
        }
        else
        {
            script_execute(scr_martlet_genocide_no_attack);
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
