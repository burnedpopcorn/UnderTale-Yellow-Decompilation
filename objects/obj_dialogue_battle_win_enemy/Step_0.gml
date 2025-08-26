if (obj_dialogue_box_battle.image_alpha > 0)
{
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
            else if (moveable == true)
            {
                var game_mode = global.game_mode;
                
                if (game_mode == "customs")
                {
                    instance_create(0, 0, obj_battle_fade_out_screen);
                    moveable = false;
                }
                else if (game_mode == "yellow")
                {
                    var world_current = scr_determine_world_value_yellow();
                    var enemy_dead_count = global.enemy_dead + global.enemy_dead_2 + global.enemy_dead_3;
                    var geno_count = global.kill_number[world_current] - enemy_dead_count;
                    
                    if (geno_count <= 0 && world_current == 1)
                    {
                        instance_create(323, 178, obj_flowey_genocide_yellow);
                        instance_destroy();
                    }
                    else
                    {
                        instance_create(0, 0, obj_battle_fade_out_screen);
                        moveable = false;
                    }
                }
            }
        }
    }
    
    script_execute(scr_text_counter);
}
