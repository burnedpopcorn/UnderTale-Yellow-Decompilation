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
        script_execute(scr_talking_flowey_1);
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
            if (message_current == 0)
            {
                while (instance_number(obj_battle_enemy_attack_friendliness_pellets_yellow) < 5)
                    instance_create(obj_flowey_intro_yellow.x, obj_flowey_intro_yellow.y, obj_battle_enemy_attack_friendliness_pellets_yellow);
            }
            
            message_current += 1;
            message_length = string_length(message[message_current]);
            characters = 0;
            message_draw = "";
        }
        else
        {
            with (obj_battle_enemy_attack_friendliness_pellets_yellow)
            {
                while (distance_counter < distance_counter_max)
                {
                    x += lengthdir_x(move_speed_create, angle);
                    y += lengthdir_y(move_speed_create, angle);
                    distance_counter += 1;
                }
                
                move = true;
            }
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
