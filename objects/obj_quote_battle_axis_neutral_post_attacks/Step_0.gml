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
    
    if (key_select_pressed && skippable == true)
    {
        if (message_current < message_end)
        {
            message_adv = true;
        }
        else if (global.enemy_sparing)
        {
            if (!instance_exists(obj_battle_fade_out_screen))
            {
                audio_play_sound(snd_monster_damage_death, 1, 0);
                instance_create(0, 0, obj_battle_fade_out_screen);
            }
        }
        else
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
            
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
