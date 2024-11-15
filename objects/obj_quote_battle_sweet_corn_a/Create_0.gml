execute_normal = false;
execute_random = false;
text_effect = "twitchy";

if (global.battle_enemy_name == "sweet corn duo")
{
    if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
    {
        message[0] = "What was#that#sound?";
        message_end = 0;
    }
    else
    {
        execute_normal = true;
    }
}
else if (global.battle_enemy_name == "sweet corn penilla duo")
{
    if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
    {
        text_effect = "circle";
        message[0] = "*oblivious#squeak*";
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
        message[0] = "W-whatever#makes you#happy.";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        if (global.action_1_selected_count >= 3)
        {
            message[0] = "Now#you're#just#invading#my space.";
            message_end = 0;
        }
        else if (global.action_1_selected_count >= 2)
        {
            message[0] = "Whatever#makes you#happy! I#suppose...";
            message_end = 0;
        }
        else if (global.action_1_selected_count >= 1)
        {
            message[0] = "Whatever#makes you#happy!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 2 Low HP")
    {
        message[0] = "I can't#feel your#love.";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I love#hugs! <3";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I'm#feelin'#the love~";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 3 Low HP")
    {
        message[0] = "I don't#want#anything#but a#smile.";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 0")
    {
        if (global.item_gift == "Candy Corn")
        {
            message[0] = "REALLY?!?";
            message_end = 0;
        }
        else if (global.item_gift == "Corn Dog")
        {
            text_effect = "circle";
            message[0] = "*bark*#*bark*";
            message_end = 0;
        }
        else if (global.item_gift == "Nothing")
        {
            message[0] = "It's the#thought#that#counts!";
            message_end = 0;
        }
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Why#aren't#you#happy?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I feel...#hurt.";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "sweet corn duo")
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
            {
                random_number = irandom_range(0, 2);
                
                if (random_number == 0)
                {
                    message[0] = "I love#you so#much <3";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "You're so#sweet <3";
                    message_end = 0;
                }
                else if (random_number == 2)
                {
                    message[0] = "A hug is#the best#medicine!";
                    message_end = 0;
                }
            }
            else
            {
                execute_random = true;
            }
        }
        else if (global.battle_enemy_name == "sweet corn penilla duo")
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
            {
                random_number = irandom_range(0, 1);
                
                if (random_number == 0)
                {
                    message[0] = "Friend?";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    text_effect = "circle";
                    message[0] = "*hums#along#with the#music*";
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
                message[0] = "You're#doing#great,#Sweetie!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                text_effect = "circle";
                message[0] = "*squeak*#*squeak*";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "You can#do this!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "Remember,#I always#love you!#<3";
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
