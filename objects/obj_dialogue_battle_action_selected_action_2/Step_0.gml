var act_number;

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
        script_execute(scr_talking_text);
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
        else
        {
            act_number = global.act_number;
            
            switch (act_number)
            {
                case 1:
                    global.no_hit_count += 1;
                    break;
                
                case 2:
                    global.no_hit_count_2 += 1;
                    break;
                
                case 3:
                    global.no_hit_count_3 += 1;
                    break;
            }
            
            script_execute(scr_battle_core_directory_action_2_selected_event);
        }
    }
}

script_execute(scr_text_counter);
