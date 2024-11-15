script_execute(scr_controls_text);

if (transforming == false)
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
            else if (transform == true)
            {
                instance_create(obj_martlet_g_body.x, obj_martlet_g_body.y, obj_martlet_g_fight_mode);
                
                with (obj_quote_bubble_battle)
                    instance_destroy();
                
                transforming = true;
            }
            else
            {
                with (obj_heart_battle_fighting_parent)
                    moveable = true;
                
                with (obj_quote_bubble_battle)
                    instance_destroy();
                
                instance_destroy();
            }
        }
    }
    
    script_execute(scr_text_counter);
}

if (transforming == true && !instance_exists(obj_martlet_g_fight_mode))
{
    with (obj_heart_battle_fighting_parent)
        moveable = true;
    
    instance_destroy();
}
