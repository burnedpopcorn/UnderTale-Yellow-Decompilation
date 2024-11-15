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
        script_execute(scr_talking_normal);
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
            global.text_box_open = false;
            
            with (obj_stats_screen_pause_screen_overworld)
                instance_destroy();
            
            with (obj_main_selection_pause_screen_overworld)
                instance_destroy();
            
            with (obj_frisk)
                moveable = true;
            
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
