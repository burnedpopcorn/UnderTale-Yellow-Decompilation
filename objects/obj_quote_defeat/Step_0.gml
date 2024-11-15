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
            if (game_mode == "yellow")
            {
                if (battle_enemy_name == "dalv")
                {
                    if (dialogue_extend == true)
                    {
                        alarm[0] = 30;
                    }
                    else
                    {
                        global.enemy_dead = true;
                        audio_play_sound(snd_monster_damage_death, 20, false);
                    }
                }
                else if (battle_enemy_name == "martlet genocide")
                {
                    instance_create(0, 0, obj_battle_fade_out_screen);
                }
                
                if (battle_enemy_name == "el bailador")
                {
                    global.enemy_dead = true;
                    instance_create(0, 0, obj_dialogue_battle_win_genocide);
                    audio_play_sound(snd_monster_damage_death, 20, false);
                }
                else if (battle_enemy_name == "axis")
                {
                    global.enemy_dead = true;
                    instance_create(0, 0, obj_dialogue_battle_win_genocide);
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
