execute_normal = false;
execute_random = false;

if (global.battle_enemy_name == "frostermit know cone duo")
{
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        var enemy_mode = global.enemy_mode;
        
        switch (enemy_mode)
        {
            case 0:
                message[0] = "OH WELL...";
                message_end = 0;
                break;
            
            case 1:
                message[0] = "WHY EVERYONE ALWAYS#RUN FROM KNOW CONE?";
                message_end = 0;
                break;
        }
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
    if (global.last_action_selected == "Action 2 Out" && global.enemy_low_hp_2 == false)
    {
        message[0] = "KNOW CONE KNEW#SOMEONE WAS THERE!!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Low HP")
    {
        message[0] = "YOU WANT FLAME FOR#SELF! KNOW CONE SEES#THROUGH!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Message 0")
    {
        message[0] = "KNOW CONE WANT SEE#FIRE! KNOW CONE#PURSUE FIRE DREAM?";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Low HP")
    {
        message[0] = "FIRE NICE!#STRANGER MEAN!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 1")
    {
        message[0] = "FIRE BAD? YOU TRIED#TO HELP KNOW CONE?#KNOW CONE APPRECIATES#THOUGHT!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        message[0] = "FIRE HOT MELT KNOW#CONE? KNOW CONE NOT#KNOW THIS! YOU GOOD#FRIEND TO KNOW CONE!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 3 Low HP")
    {
        message[0] = "KNOW CONE SORRY!#PLEASE LEAVE KNOW#CONE ALONE!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 3 Message 1")
    {
        message[0] = "BUT YOU TEACHER? MY#IGNORANCE YOUR FAULT#NOW! JOKE ON YOU!";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 3 Message 0")
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
    else if (global.enemy_low_hp_2 == true)
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
        if (global.battle_enemy_name == "frostermit know cone duo")
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
            {
                var enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 0:
                        random_number = irandom_range(0, 2);
                        
                        if (random_number == 0)
                        {
                            message[0] = "HELLO?? SOMEONE#THERE??";
                            message_end = 0;
                        }
                        else if (random_number == 1)
                        {
                            message[0] = "KNOW CONE CONFUSED!";
                            message_end = 0;
                        }
                        else if (random_number == 2)
                        {
                            message[0] = "I BRING FIRE HERE!#FRIEND WILL SHOW!";
                            message_end = 0;
                        }
                        
                        break;
                    
                    case 1:
                        random_number = irandom_range(0, 2);
                        
                        if (random_number == 0)
                        {
                            message[0] = "KNOW CONE KNOW#LOTS OF GAMES!!";
                            message_end = 0;
                        }
                        else if (random_number == 1)
                        {
                            message[0] = "WANNA BE KNOW#CONE FRIEND??";
                            message_end = 0;
                        }
                        else if (random_number == 2)
                        {
                            message[0] = "FLAME IS WHAT#FROSTERMIT NEED#RIGHT NOW!!";
                            message_end = 0;
                        }
                        
                        break;
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
