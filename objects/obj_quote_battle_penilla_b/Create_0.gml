execute_normal = false;
execute_random = false;

if (global.battle_enemy_name == "flier penilla duo")
{
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        message[0] = "I wanted him#gone but not#that way!";
        message_end = 0;
    }
    else
    {
        execute_normal = true;
    }
}
else if (global.battle_enemy_name == "sweet corn penilla duo")
{
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        message[0] = "But she was so#sweet!";
        message_end = 0;
    }
    else
    {
        execute_normal = true;
    }
}
else if (global.battle_enemy_name == "crispy scroll penilla duo")
{
    if (global.enemy_dead == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        message[0] = "He didn't#deserve to die!";
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
        message[0] = "You got some#nerve.";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "You're just#saying that#because you feel#obligated.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I don't really#think it's ready#for people yet.";
            message_end = 0;
        }
    }
    else if (global.last_action_selected_2 == "Action 2 Low HP")
    {
        message[0] = "Maybe art isn't#the right path#for me.";
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I suppose I#could use a#break.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I have been at#this for a#while...";
            message_end = 0;
        }
    }
    else if (global.enemy_low_hp_2 == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I'll just...#tape it back#together.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "A sharpener#would come in#handy right#about now...";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "flier penilla duo")
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
            {
                message[0] = "My motivation is#really dying#here.";
                message_end = 0;
            }
            else
            {
                execute_random = true;
            }
        }
        else if (global.battle_enemy_name == "sweet corn penilla duo")
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
            {
                random_number = irandom_range(0, 1);
                
                if (random_number == 0)
                {
                    message[0] = "Aww! How#adorable!";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "Finally, someone#to get along with!";
                    message_end = 0;
                }
            }
            else
            {
                execute_random = true;
            }
        }
        else if (global.battle_enemy_name == "crispy scroll penilla duo")
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
            {
                random_number = irandom_range(0, 1);
                
                if (random_number == 0)
                {
                    message[0] = "Sorry, I don't#draw requests.";
                    message_end = 0;
                }
                else if (random_number == 1)
                {
                    message[0] = "Can we talk#about something#else?";
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
                message[0] = "Gotta keep my#skills sharp!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "The artist's#life is one of#solitude.";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "So all my hand#work leads to#this?";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "2B or not 2B?";
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
