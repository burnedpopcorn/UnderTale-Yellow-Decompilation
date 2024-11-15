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
        script_execute(scr_talking_starlo);
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
            instance_create(0, 0, obj_dialogue_battle_win_genocide);
            audio_play_sound(snd_monster_damage_death, 20, false);
            instance_destroy(obj_quote_bubble_battle_yellow_3);
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
