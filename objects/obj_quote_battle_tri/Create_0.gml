execute_normal = false;
execute_random = false;

if (global.battle_enemy_name == "trihecta separated")
{
    if (((global.enemy_dead_2 == true && global.fight_number == 2) || (global.enemy_dead_3 == true && global.fight_number == 3)) && global.battle_menu_number == 1)
    {
        random_number = irandom_range(0, 2);
        
        if (random_number == 0)
        {
            message[0] = "NO!!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Please, no!";
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "That was my#sibling!";
            message_end = 0;
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
    if (global.last_action_selected == "Action 1 Message 0")
    {
        message[0] = "What's so funny?";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 0")
    {
        message[0] = "We have our#disagreements,#but you are my#pals.";
        message_end = 0;
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 4);
        
        if (random_number == 0)
        {
            message[0] = "I need to run#away.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Why...";
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "This wasn't#supposed to#happen...";
            message_end = 0;
        }
        else if (random_number == 3)
        {
            message[0] = "Now I know why#we shouldn't#separate...";
            message_end = 0;
        }
        else if (random_number == 4)
        {
            message[0] = "Oww...";
            message_end = 0;
        }
    }
    else
    {
        execute_random = true;
        
        if (execute_random == true)
        {
            random_number = irandom_range(0, 2);
            
            if (random_number == 0)
            {
                message[0] = "Everyone okay?";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "I told you this#would happen!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "Any injuries?#Trauma?#Maladies?";
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
