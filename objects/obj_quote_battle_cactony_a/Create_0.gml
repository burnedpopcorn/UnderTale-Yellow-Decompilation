execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
random_number = 0;

if (global.battle_enemy_name == "cactony slither duo")
{
    if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
    {
        message[0] = "Wait, don't go...";
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
        message[0] = "That's what you#get.";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "It's so warm...#Is this what#love feels like?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Does this mean#you... care about#me?";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 2 Low HP")
    {
        message[0] = "At least have the#decency to look#at me!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Why does#everyone do this#to me?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "What else is#new...";
            message_end = 0;
        }
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Could this day#get any worse?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            text_effect = "circle";
            message[0] = "*Sigh*";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "cactony slither duo")
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
            {
                random_number = irandom_range(0, 2);
                
                if (random_number == 0)
                {
                    message[0] = "You... think#so?";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "I'm not so#sure about#that..";
                    message_end = 0;
                }
                else if (random_number == 2)
                {
                    message[0] = "Uhhhh...";
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
            random_number = irandom_range(0, 4);
            
            if (random_number == 0)
            {
                message[0] = "No one loves#me...";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "I'm burning up.";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                text_effect = "circle";
                message[0] = "*Sigh*";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "These needles#are such a#curse...";
                message_end = 0;
            }
            else if (random_number == 4)
            {
                message[0] = "I'm just a#burden to#everyone...";
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
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
