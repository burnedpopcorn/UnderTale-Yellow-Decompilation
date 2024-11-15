script_execute(scr_controls_text);

if (message_current == 1 || message_current == 0)
    draw_set_color(c_fuchsia);

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
        script_execute(scr_talking_axis);
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
            global.enemy_dead = true;
            instance_destroy(obj_quote_bubble_battle);
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
