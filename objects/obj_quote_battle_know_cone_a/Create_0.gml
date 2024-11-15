var heart_position;

execute_normal = false;
execute_random = false;

if (global.battle_enemy_name == "know cone insomnitot duo")
{
    heart_position = script_execute(scr_return_heart_battle_menu_position);
    
    if (global.enemy_dead_2 == true && global.fight_number == 2 && global.battle_menu_number == 1)
    {
        message[0] = "WHERE TOT GO!?#THEY FUN!!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Message 1" && heart_position == "2222")
    {
        message[0] = "TOT SLEEP. KNOW CONE WISHES GOOD DREAM.";
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
        message[0] = "YOU WANT FLAME FOR#SELF! KNOW CONE SEES#THROUGH!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        message[0] = "KNOW CONE WANT SEE#FIRE! KNOW CONE#PURSUE FIRE DREAM?";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Low HP")
    {
        message[0] = "FIRE NICE!#STRANGER MEAN!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 1")
    {
        message[0] = "FIRE BAD? YOU TRIED#TO HELP KNOW CONE?#KNOW CONE APPRECIATES#THOUGHT!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        message[0] = "FIRE HOT MELT KNOW#CONE? KNOW CONE NOT#KNOW THIS! YOU GOOD#FRIEND TO KNOW CONE!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Low HP")
    {
        message[0] = "KNOW CONE SORRY!#PLEASE LEAVE KNOW#CONE ALONE!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 1")
    {
        message[0] = "BUT YOU TEACHER? MY#IGNORANCE YOUR FAULT#NOW! JOKE ON YOU!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 0")
    {
        random_number = irandom_range(0, 2);
        
        if (random_number == 0)
        {
            message[0] = "WHAT KNOW CONE NOT#KNOW IS NOT KNOW CONE#FAULT! THAT VERY RUDE!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "YOU NOT SYMPATHETIC#TO KNOW CONE! THAT#MAKE KNOW CONE ANGRY!";
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "THIS BULLYING!#BULLYING VERY MEAN!#KNOW CONE IS BEING#BULLIED!";
            message_end = 0;
        }
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "KNOW CONE HURT!#OW OW OW!#PAIN BAD!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "KNOW CONE NO LIKE#SMALL STRANGER!";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "know cone insomnitot duo")
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
            {
                random_number = irandom_range(0, 2);
                
                if (random_number == 0)
                {
                    message[0] = "KNOW CONE SING HIS#FAMOUS LULLABY!";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "KNOW CONE WILL LET#TOT SLEEP AT ALL COSTS!";
                    message_end = 0;
                }
                else if (random_number == 2)
                {
                    message[0] = "KNOW CONE SHOW TOT#FLAME! TOT WILL LIKE!";
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
                message[0] = "YOU STRANGER BRING#KNOW CONE FIRE?#KNOW CONE VERY MUCH#WANT FIRE!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "KNOW CONE HEAR FIRE#BRIGHT PRETTY!#KNOW CONE LIKE#BRIGHT PRETTY!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "KNOW CONE DREW ON WALL#ONCE! KNOW CONE MOTHER#GOT MAD!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "KNOW CONE HIT THING#WITH CLUB! GOLF FUN#FOR KNOW CONE!";
                message_end = 0;
            }
            else if (random_number == 4)
            {
                message[0] = "SNOWDIN TOO COLD!#KNOW CONE WANT#HOTLAND!";
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
