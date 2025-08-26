execute_normal = false;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
execute_normal = true;

if (execute_normal == true)
{
    if (global.last_action_selected == "Action 1 Low HP")
    {
        message[0] = "They were only#greetings!#I ssswear!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Low HP")
    {
        message[0] = "It's true, I#do. Run along#now!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Low HP")
    {
        message[0] = "Ding ding ding!#Got a genius#over here!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Oh, this and#that. Odds and#ends. Ya know...";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I'm an#excccellent#travel companion,#I am!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Yesss, we're#gonna go far,#you and me!";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "I knew you'd#see things my#way, human!";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 3 Message 0")
    {
        message[0] = "Come on mate,#don't leave me#out to dry!";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 1")
    {
        message[0] = "Fine! But you're#missing out#BIG!";
        message[1] = "Enjoy the#snake-sized#hole in your#heart!";
        message_end = 1;
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "H-Help a friend#patch themselves#up, eh?";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Calm down, mate.#We can work#something out...";
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
                message[0] = "Adventure?#That's my#maiden name!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Why are you#avoiding my#greetings? Come#on!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "What's your story?#Scandals?#Sssecrets...?";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "I can help ya#climb out of your#rut, I can!";
                message_end = 0;
            }
            else if (random_number == 4)
            {
                message[0] = "You can trussst#me! Swear on#me mum!";
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
