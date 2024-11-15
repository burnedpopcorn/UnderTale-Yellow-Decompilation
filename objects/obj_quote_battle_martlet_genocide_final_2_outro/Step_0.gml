if (live_call())
    return global.live_result;

script_execute(scr_controls_text);

if (instance_exists(obj_quote_bubble_battle))
{
    if (draw_enabled == false)
        obj_quote_bubble_battle.visible = 0;
    else
        obj_quote_bubble_battle.visible = 1;
}

script_execute(scr_cutscene_battle_martlet_final_2_outro);

if (save_message_alpha > 0)
    save_message_alpha -= 0.1;
else
    save_message_alpha = 0;

if (draw_enabled == false)
    exit;

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
        
        if (message_current < 15)
        {
            script_execute(scr_talking_martlet);
        }
        else if (message_current < 42)
        {
            script_execute(scr_talking_flowey_1);
        }
        else
        {
            text_effect = "circle";
            script_execute(scr_talking_flowey_2);
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
    
    if (key_select_pressed && skippable == true)
    {
        if (message_current < message_end)
        {
            message_adv = true;
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

if (message_adv == true)
{
    message_current += 1;
    message_length = string_length(message[message_current]);
    characters = 0;
    message_draw = "";
    draw_enabled = true;
    message_adv = false;
}

script_execute(scr_text_counter);
