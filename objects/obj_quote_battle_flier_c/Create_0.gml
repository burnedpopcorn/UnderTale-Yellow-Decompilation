execute_normal = false;
execute_random = false;

if (global.battle_enemy_name == "flier trio")
{
    if (((global.enemy_dead == true && global.fight_number == 1) || (global.enemy_dead_2 == true && global.fight_number == 2)) && global.battle_menu_number == 1)
    {
        message[0] = "That was my bro!";
        message[1] = "He had goals in#life!";
        message_end = 1;
    }
    else
    {
        execute_normal = true;
    }
}
else
{
    execute_normal = true;
}

if (execute_normal == true)
{
    if (global.last_action_selected_3 == "Action 1 Low HP")
    {
        message[0] = "Don't come near#me!";
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I... This isn't#really me...";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "You're right.#Something needs#to change.";
            message_end = 0;
        }
    }
    else if (global.last_action_selected_3 == "Action 2 Low HP")
    {
        message[0] = "I don't accept.";
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "That's right! I#knew you noticed!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Yeah, I totally#agree.";
            message_end = 0;
        }
    }
    else if (global.last_action_selected_3 == "Action 3 Low HP")
    {
        message[0] = "Right back at#you.";
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "You just have no#sense of modern#fashion trends!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "That hurts me on#a personal level.";
            message_end = 0;
        }
    }
    else if (global.enemy_low_hp_3 == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Just gotta keep#it... cool.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "So this is how it#ends?";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "flier trio")
        {
            if ((global.enemy_dead + global.enemy_spared + global.enemy_dead_2 + global.enemy_spared_2) < 2)
            {
                random_number = irandom_range(0, 2);
                
                if (random_number == 0)
                {
                    message[0] = "Who wants to have#a cookout?";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "Hey guys, check#out my new ride#B)";
                    message_end = 0;
                }
                else if (random_number == 2)
                {
                    message[0] = "Finally! Monsters#that get me!";
                    message_end = 0;
                }
            }
            else
            {
                execute_random = true;
            }
        }
        else
        {
            execute_random = true;
        }
        
        if (execute_random == true)
        {
            random_number = irandom_range(0, 2);
            
            if (random_number == 0)
            {
                message[0] = "I'm looking to#buy a boat! Know#anyone selling?";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "I've been working#out! No big deal#; )";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "I found this#great new band#the other day!";
                message_end = 0;
            }
        }
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
