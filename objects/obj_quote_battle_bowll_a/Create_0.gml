execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;

if (global.battle_enemy_name == "frostermit know cone duo")
    execute_normal = true;
else
    execute_normal = true;

if (execute_normal == true)
{
    if (global.last_action_selected == "Action 1 Low HP")
    {
        message[0] = "Take it easy, pal!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Sparing")
    {
        message[0] = "I didn't know I#could reflect so#much. Thank you!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "I'm only keeping#my distance so#I can charge at#you later!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "You're not tough#enough to lay a#hand on me!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 2 Low HP")
    {
        message[0] = "What's so funny,#huh?";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "N-no! I'm#practically made#of steel!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Y-you watch your#mouth!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 3 Low HP")
    {
        message[0] = "You're the one#that should be#careful!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 1")
    {
        message[0] = "Really? You mean#it?";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 0")
    {
        message[0] = "But I... I am#tough.";
        message_end = 0;
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "This... just#makes me#stronger!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "It'll t-take#more than that#to take me#down!";
            message_end = 0;
        }
    }
    else
    {
        if (global.battle_enemy_name == "frostermit know cone duo")
            execute_random = true;
        else
            execute_random = true;
        
        if (execute_random == true)
        {
            random_number = irandom_range(0, 4);
            
            if (random_number == 0)
            {
                message[0] = "You better watch#out!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "You're gonna get#the horns, buddy!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "These cracks are#my battle scars.#Beware!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "I'm waaay#stronger than#you think!";
                message_end = 0;
            }
            else if (random_number == 4)
            {
                message[0] = "I wouldn't mess#with me if I#  were you!";
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
