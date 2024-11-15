var case_end;

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
else if (characters == message_length)
{
    can_talk = false;
    
    if (message_current == (con_message_number - 1) && no_loop == false && item_category == "consumable")
    {
        alarm[0] = 20;
        no_loop = true;
    }
    else if (key_select_pressed)
    {
        case_end = false;
        
        if (message_current < message_end && !(message_current == (con_message_number - 1) && item_category == "consumable"))
        {
            message_current += 1;
            message_length = string_length(message[message_current]);
            characters = 0;
            message_draw = "";
        }
        else if (message_current == message_end)
        {
            if (item_category == "consumable")
            {
                for (i = global.item_pause_screen_number; i < 8; i += 1)
                    global.item_slot[i] = global.item_slot[i + 1];
                
                global.item_slot[8] = "Nothing";
            }
            
            case_end = true;
        }
        
        if (case_end == true)
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
