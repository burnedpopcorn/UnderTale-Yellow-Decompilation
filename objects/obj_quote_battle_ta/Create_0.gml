execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;

if (global.battle_enemy_name == "trihecta separated")
{
    if (((global.enemy_dead == true && global.fight_number == 1) || (global.enemy_dead_2 == true && global.fight_number == 2)) && global.battle_menu_number == 1)
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
    if (global.last_action_selected_3 == "Action 1 Message 0")
    {
        text_effect = "circle";
        message[0] = "*Giggles back*";
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        message[0] = "I love you guys#sooo much!";
        message_end = 0;
    }
    else if (global.enemy_low_hp_3 == true)
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
                message[0] = "This is even#BETTER!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "There's so much#to explore!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "I can run for#MILES!";
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
