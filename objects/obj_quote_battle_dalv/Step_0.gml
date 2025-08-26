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
        script_execute(scr_talking_dalv);
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
            var enemy_mode = global.enemy_mode;
            var can_attack = true;
            
            switch (enemy_mode)
            {
                case 0:
                    if (global.enemy_mode_gen == 0 && global.turns_passed >= 9)
                        can_attack = false;
                    
                    break;
                
                case 1:
                    if (global.enemy_mode_gen == 0 && global.turns_passed >= 8)
                        can_attack = false;
                    
                    break;
                
                case 2:
                    if (global.turns_passed >= 7)
                        can_attack = false;
                    
                    break;
            }
            
            if (can_attack == true)
            {
                with (obj_heart_battle_fighting_parent)
                    moveable = true;
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any)
                    event_user(0);
            }
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy();
        }
    }
}

script_execute(scr_text_counter);
