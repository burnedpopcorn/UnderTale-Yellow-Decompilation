execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;

if (global.battle_enemy_name == "insomnitot duo")
{
    var heart_position = script_execute(scr_return_heart_battle_menu_position);
    
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        message[0] = "Huh? What? I#think I nodded#off...";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 1" && heart_position == "2122")
    {
        message[0] = "So much for all night.";
        message_end = 0;
    }
    else
    {
        execute_normal = true;
    }
}
else if (global.battle_enemy_name == "know cone insomnitot duo")
{
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        message[0] = "Huh. The noise#stopped.";
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
    if (global.last_action_selected_2 == "Action 1 Low HP")
    {
        message[0] = "You need vocal#lessons.";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Sparing")
    {
        message[0] = "Pretty song...#zzzz...";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Message 1")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            text_effect_2 = "circle";
            message[0] = "You're a       #good sing...er...";
            message_2[0] = "         *YAWN*#                 ";
            message_end = 0;
            color_count = 1;
        }
        else if (random_number == 1)
        {
            message[0] = "I like that#song...";
            message_end = 0;
        }
    }
    else if (global.last_action_selected_2 == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Know anything#more upbeat?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I see what#you're doing.#It's not gonna#work!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected_2 == "Action 2 Low HP")
    {
        message[0] = "You're not the#boss of me.";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Sparing" || global.last_action_selected_2 == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Yeah, yeah,#don't talk to#strangers.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "You sound like#my parents!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected_2 == "Action 3 Low HP")
    {
        message[0] = "Nice try.";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 3 Sparing" || global.last_action_selected_2 == "Action 3 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I'm...#getting...#sleepy?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            text_effect = "circle";
            message[0] = "*YAWN*";
            message_end = 0;
        }
    }
    else if (global.enemy_low_hp_2 == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Ow... now I have#a headache.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "No need to be so#crass.";
            message_end = 0;
        }
    }
    else if (global.enemy_sparing_2 == true)
    {
        random_number = irandom_range(0, 2);
        
        if (random_number == 0)
        {
            message[0] = "Zzzz...zzz";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            text_effect = "circle";
            message[0] = "*Snore*";
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "Zzzzz... noodles... zzz";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "insomnitot duo")
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
            {
                random_number = irandom_range(0, 3);
                
                if (random_number == 0)
                {
                    message[0] = "When you have#friends, you#don't need sleep!";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "We're gonna stay#up all night#chatting!";
                    message_end = 0;
                }
                else if (random_number == 2)
                {
                    message[0] = "We're starting a#night owl club.";
                    message_end = 0;
                }
                else if (random_number == 3)
                {
                    message[0] = "Together we fight#the oppressive#construct of#bedtimes!";
                    message_end = 0;
                }
            }
            else
            {
                execute_random = true;
            }
        }
        
        if (global.battle_enemy_name == "know cone insomnitot duo")
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
            {
                random_number = irandom_range(0, 1);
                
                if (random_number == 0)
                {
                    message[0] = "I can't sleep#even if I wanted#to.";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    text_effect = "circle";
                    message[0] = "*YAWN*";
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
                message[0] = "I outgrew my#bedtime, so no#rules for me.";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Sleep is for#the weak!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "Cool things#happen 24 hours#a day!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "I'm not tired,#you are!";
                message_end = 0;
            }
            else if (random_number == 4)
            {
                message[0] = "Don't know what#time it is and#I don't care.";
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
