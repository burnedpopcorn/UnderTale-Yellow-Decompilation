execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
spawner = -4;

if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
{
    message[0] = "TA-TA-TAKE#A CHILL PILL#BUDDY !";
    message_end = 0;
}
else
{
    execute_normal = true;
}

if (execute_normal == true)
{
    if (global.enemy_low_hp == true)
    {
        random_message = irandom_range(0, 1);
        
        switch (random_message)
        {
            case 0:
                message[0] = "D-DOn'T HATE#ON MY m/MusIC#TASTES_";
                break;
            
            case 1:
                message[0] = "BiT OF A#H-H-HARSH nOISE#COMPLAINT/ /";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        if (global.action_3_selected_count <= 1)
        {
            switch (random_message)
            {
                case 0:
                    message[0] = "KEEP UP !#KEEP UP !";
                    break;
                
                case 1:
                    message[0] = "IF YOU CAN'T#V-VIBE TO IT,#GIVE IT U-U-UP !";
                    break;
            }
        }
        else
        {
            switch (random_message)
            {
                case 0:
                    message[0] = "Okay, yeah !#I see you !";
                    break;
                
                case 1:
                    message[0] = "Oh, now THIS#is groovy !";
                    break;
            }
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        if (global.action_3_selected_count <= 1)
        {
            switch (random_message)
            {
                case 0:
                    message[0] = "WHAT'S THAT ?#MORE VOLUME ?";
                    break;
                
                case 1:
                    message[0] = "D-D-DISRESPECTFUL !";
                    break;
            }
        }
        else
        {
            switch (random_message)
            {
                case 0:
                    message[0] = "Come o-on,#relax a#l-l-little .";
                    break;
                
                case 1:
                    message[0] = "N-No need to#be bashful,#buddy .";
                    break;
            }
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        random_message = irandom_range(0, 1);
        
        if (global.action_3_selected_count <= 1)
        {
            switch (random_message)
            {
                case 0:
                    message[0] = "HEY W-W-what#is... this ?";
                    break;
                
                case 1:
                    message[0] = "WAIT !#I... Oh ?";
                    break;
            }
        }
        else
        {
            random_message = irandom_range(0, 1);
            
            switch (random_message)
            {
                case 0:
                    message[0] = "Don't k-kill#the mood :)";
                    break;
                
                case 1:
                    message[0] = "I like#th-this one :)";
                    break;
            }
        }
        
        message_end = 0;
    }
    else
    {
        if (global.battle_enemy_name == "jandroid goosic duo")
        {
            if ((global.enemy_dead + global.enemy_spared + global.enemy_sparing) < 1)
            {
                if (global.action_3_selected_count_2 >= 1)
                {
                    random_message = irandom_range(0, 1);
                    
                    switch (random_message)
                    {
                        case 0:
                            message[0] = "This is#n-nice :)";
                            message_end = 0;
                            break;
                        
                        case 1:
                            message[0] = "Mhm,#yeah :)";
                            message_end = 0;
                            break;
                    }
                }
                else
                {
                    random_message = irandom_range(0, 1);
                    
                    if (random_message == 0)
                    {
                        message[0] = "THREE'S A CROWD !#IT'S CONCERT#TIME !";
                        message_end = 0;
                    }
                    else if (random_message == 1)
                    {
                        message[0] = "I SEE YOUR MOVES !#GET IT GET IT !";
                        message_end = 0;
                    }
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
            if (global.action_3_selected_count_2 >= 1)
            {
                random_message = irandom_range(0, 1);
                
                switch (random_message)
                {
                    case 0:
                        message[0] = "This is#n-nice :)";
                        message_end = 0;
                        break;
                    
                    case 1:
                        message[0] = "Mhm,#yeah :)";
                        message_end = 0;
                        break;
                }
            }
            else
            {
                random_message = irandom_range(0, 4);
                
                if (random_message == 0)
                {
                    message[0] = "bzt- YOU'RE#LISTENING TO#D-E-A-T-H#RADIO-O-o !";
                    message_end = 0;
                }
                else if (random_message == 1)
                {
                    message[0] = "TH-TH-THIS ONE#GOES OUT TO ALL#THE HUMANS#OUT THERE !";
                    message_end = 0;
                }
                else if (random_message == 2)
                {
                    message[0] = "LOUDER !#LOUDER !#LOUDER !";
                    message_end = 0;
                }
                else if (random_message == 3)
                {
                    message[0] = "I'M G-GIVING AWAY#ONE FREE TICKET#TO THE A-A-AFTERLIFE !";
                    message_end = 0;
                }
                else if (random_message == 4)
                {
                    message[0] = "bzt- AND NOW A WORD#FROM OUR SPONSOR:#BULLET-PATTERNS ! ";
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
