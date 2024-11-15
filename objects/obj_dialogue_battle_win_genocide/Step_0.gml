if (obj_dialogue_box_battle.image_alpha > 0)
{
    script_execute(scr_controls_text);
    
    if (can_check_display_text == true)
        display_text = script_execute(scr_determine_display_text_battle_boss_genocide);
    
    if (display_text == true)
    {
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
                else if (moveable == true)
                {
                    instance_create(0, 0, obj_battle_fade_out_screen);
                    moveable = false;
                }
            }
        }
        
        script_execute(scr_text_counter);
    }
}
