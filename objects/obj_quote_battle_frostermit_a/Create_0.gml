execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
var enemy_mode = global.enemy_mode;

if (enemy_mode == 0)
{
    if (global.battle_enemy_name == "frostermit know cone duo")
    {
        if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
        {
            message[0] = "H-he wasn't#that annoying...";
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
            text_effect = "circle";
            message[0] = "I-Igloo.";
            message_end = 0;
        }
        else if (global.last_action_selected == "Action 1 Message 0")
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "It's just an#igloo! Wait,#did you say#that already?";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Yep, nothing to#see here!";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 2 Low HP")
        {
            text_effect_2 = "circle";
            message[0] = "What even is#that? I mean-         ";
            message_2[0] = "                          IGLOO ! !";
            message_end = 0;
            color_count = 1;
        }
        else if (global.last_action_selected == "Action 2 Message 0" || global.last_action_selected == "Action 2 Out")
        {
            message[0] = "Um, hi... Can I#join?";
            message_end = 0;
        }
        else if (global.last_action_selected == "Action 3 Low HP")
        {
            text_effect_2 = "circle";
            message[0] = "You don't mean#tha-               ";
            message_2[0] = "                   IGLOO IGLOO ! !";
            message_end = 0;
            color_count = 1;
        }
        else if (global.last_action_selected == "Action 3 Message 0")
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                text_effect = "circle";
                message[0] = "Appreciative#igloo noise!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                text_effect_2 = "circle";
                message[0] = "Thanks- I mean#       ";
                message_2[0] = "              #igloO !";
                message_end = 0;
                color_count = 1;
            }
        }
        else if (global.enemy_low_hp == true)
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                text_effect = "circle";
                message[0] = "IGLOO IGLOO ! !";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                text_effect_2 = "circle";
                message[0] = "Ow... I mean-                ";
                message_2[0] = "             #IGLOO NOISES ! !";
                message_end = 0;
                color_count = 1;
            }
        }
        else
        {
            if (global.battle_enemy_name == "frostermit know cone duo")
            {
                if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
                {
                    random_number = irandom_range(0, 1);
                    
                    if (random_number == 0)
                    {
                        text_effect = "circle";
                        message[0] = "I-Igloo?";
                        message_end = 0;
                    }
                    else if (random_number == 1)
                    {
                        text_effect = "circle";
                        message[0] = "Repelling#igloo sounds!";
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
                random_number = irandom_range(0, 1);
                
                if (random_number == 0)
                {
                    text_effect = "circle";
                    message[0] = "Igloo igloo.";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    text_effect = "circle";
                    message[0] = "Igloo noises.";
                    message_end = 0;
                }
            }
        }
    }
}

if (enemy_mode == 1)
{
    if (global.battle_enemy_name == "frostermit know cone duo")
    {
        if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
        {
            message[0] = "H-he wasn't#that annoying...";
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
            message[0] = "You better watch#out. My pinchers#are fierce.";
            message_end = 0;
        }
        else if (global.last_action_selected == "Action 1 Message 0")
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "There's nothing#to stare at...#is there?";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "That's a little#rude ya know...";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 2 Low HP")
        {
            message[0] = "Wannabe.";
            message_end = 0;
        }
        else if (global.last_action_selected == "Action 2 Message 0")
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "Next time I'll#lead!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Can you come#dance with me#more often?";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 2 Out")
        {
            message[0] = "Um, hi... Can I#join?";
            message_end = 0;
        }
        else if (global.last_action_selected == "Action 3 Low HP")
        {
            message[0] = "...";
            message_end = 0;
        }
        else if (global.last_action_selected == "Action 3 Message 0")
        {
            message[0] = "Really?!#Ninja-like?!";
            message_end = 0;
        }
        else if (global.enemy_low_hp == true)
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "Looks like I'm#in a bit of a#pinch...";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "My home...";
                message_end = 0;
            }
        }
        else
        {
            if (global.battle_enemy_name == "frostermit know cone duo")
            {
                if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
                {
                    random_number = irandom_range(0, 1);
                    
                    if (random_number == 0)
                    {
                        text_effect = "circle";
                        message[0] = "*shudder shudder*";
                        message_end = 0;
                    }
                    else if (random_number == 1)
                    {
                        message[0] = "I was not#prepared for this.";
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
                    text_effect = "circle";
                    message[0] = "*tap tap*";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    text_effect = "circle";
                    message[0] = "*pinch pinch*";
                    message_end = 0;
                }
                else if (random_number == 2)
                {
                    text_effect = "circle";
                    message[0] = "*snap snap*";
                    message_end = 0;
                }
                else if (random_number == 3)
                {
                    message[0] = "You like to#groove?";
                    message_end = 0;
                }
                else if (random_number == 4)
                {
                    message[0] = "I know some#sick scuttles.";
                    message_end = 0;
                }
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
