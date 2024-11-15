var battle_enemy_name, game_mode;

if (obj_dialogue_box_battle.image_alpha > 0)
{
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
            else
            {
                if (game_mode == "customs")
                {
                }
                else if (game_mode == "yellow")
                {
                    if (battle_enemy_name == "micro froggit")
                        global.important_cutscene = false;
                }
                
                instance_create(0, 0, obj_dialogue_battle_win_genocide);
                instance_destroy();
            }
        }
    }
    
    script_execute(scr_text_counter);
}
