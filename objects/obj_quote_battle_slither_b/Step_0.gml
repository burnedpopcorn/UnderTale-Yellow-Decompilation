var target_bubble;

if (!instance_exists(obj_quote_bubble_battle))
{
    instance_destroy();
    exit;
}

script_execute(scr_controls_text);

if (key_revert_pressed)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
    
    if (color_count >= 1)
        message_draw_2 = string_copy(message_2[message_current], 0, characters);
}

if (characters < message_length)
{
    if (counter == 0)
    {
        if (color_count >= 1)
        {
            script_execute(scr_text_increase_color);
            script_execute(scr_talking_enemy_color);
        }
        else
        {
            script_execute(scr_text_increase);
            script_execute(scr_talking_enemy);
        }
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
            
            if (color_count >= 1)
                message_draw_2 = "";
        }
        else
        {
            with (obj_heart_battle_fighting_parent)
                moveable = true;
            
            target_bubble = 2141;
            
            if (spawner != -4)
                target_bubble = spawner;
            
            with (target_bubble)
                instance_destroy();
            
            instance_destroy();
        }
    }
}

if (color_count >= 1)
    script_execute(scr_text_counter_color);
else
    script_execute(scr_text_counter);
