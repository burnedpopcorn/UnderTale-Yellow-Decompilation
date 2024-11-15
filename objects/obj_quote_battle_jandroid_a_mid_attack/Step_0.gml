script_execute(scr_controls_text);

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
}

if (color_count >= 1)
    script_execute(scr_text_counter_color);
else
    script_execute(scr_text_counter);

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    with (obj_quote_bubble_battle)
        instance_destroy();
    
    instance_destroy();
}
