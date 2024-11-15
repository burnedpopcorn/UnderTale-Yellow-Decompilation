execute_normal = false;
execute_random = false;

if (global.battle_enemy_name == "crispy scroll penilla duo")
{
    if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
    {
        message[0] = "YOU BAKA~";
        message_end = 0;
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
    if (global.last_action_selected == "Action 1 Low HP")
    {
        message[0] = "Do you even#watch anime?!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        if (global.enemy_count == 3)
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2 + global.enemy_dead_3 + global.enemy_spared_3) < 2)
            {
                message[0] = "I can't do it with monsters watching...";
                message_end = 0;
            }
            else
            {
                message[0] = "AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA";
                message_end = 0;
            }
        }
        else if (global.enemy_count == 2)
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
            {
                message[0] = "I can't do it#with monsters#watching...";
                message_end = 0;
            }
            else
            {
                message[0] = "AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA";
                message_end = 0;
            }
        }
        else
        {
            message[0] = "AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA#AAAAAAAAAAAAAAAA";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 2 Low HP")
    {
        message[0] = "You aren't even#doing it right!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        message[0] = "Wait! Do you#speak fluent#reference?";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 1")
    {
        message[0] = "I can feel the#power coursing#through my#ribbons!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Low HP")
    {
        message[0] = "You have no#respect for the#artform.";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 0")
    {
        message[0] = "Hey! I don't#judge your#headcanons!";
        message_end = 0;
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I'm not giving#up!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Live a hero, die#a hero.";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "crispy scroll penilla duo")
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
            {
                random_number = irandom_range(0, 1);
                
                if (random_number == 0)
                {
                    message[0] = "Can you draw#manga?";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "You remind me of#this one anime I#saw.";
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
            random_number = irandom_range(0, 3);
            
            if (random_number == 0)
            {
                message[0] = "This isn't even#my final form!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "It isn't easy#being this#bishie!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "Don't go#tsundere on me#now!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "You must be the#antagonist!";
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
