var battle_enemy_name, game_mode;

battle_enemy_name = global.battle_enemy_name;
game_mode = global.game_mode;
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
        script_execute(talking_script);
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
            if (game_mode == "customs")
            {
            }
            else if (game_mode == "yellow")
            {
                if (battle_enemy_name == "dalv")
                {
                    global.enemy_dead = true;
                    audio_play_sound(snd_monster_damage_death, 20, false);
                }
            }
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            if (dialogue_extend == false)
                instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
