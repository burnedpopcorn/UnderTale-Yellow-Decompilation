if (fade_out == true)
{
    if (image_alpha > 1)
    {
        image_alpha -= 0.2;
    }
    else
    {
        instance_create(0, 0, obj_game_over_choice);
        instance_destroy();
    }
    
    exit;
}

var battle_enemy_name = global.battle_enemy_name;
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
        script_execute(scr_talking_game_over);
    }
    else
    {
        can_talk = false;
    }
}

if (characters == message_length && no_loop == false)
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
            fade_out = true;
            no_loop = true;
        }
    }
}

script_execute(scr_text_counter);
