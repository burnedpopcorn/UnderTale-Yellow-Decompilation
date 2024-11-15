execute_normal = false;
execute_random = false;
text_effect = "circle";
text_effect_2 = "circle";
color_count = 0;

switch (global.dunes_flag[31])
{
    case 1:
        if (global.last_action_selected == "Action 1 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Eh... what?";
                message_end = 0;
            }
            else
            {
                message[0] = "I...";
                message[1] = "(Visual embarrassment)";
                message_end = 1;
            }
        }
        else if (global.last_action_selected == "Action 2 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "...";
                message_end = 0;
            }
            else
            {
                message[0] = "Alright, h-here goes#nothing.";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 3 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Yeah...";
                message_end = 0;
            }
            else
            {
                message[0] = "I know... sorry...";
                message_end = 0;
            }
        }
        else if (global.enemy_low_hp == false)
        {
            random_number = irandom_range(0, 3);
            
            if (random_number == 0)
            {
                message[0] = "D-Don't mind me.";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "...";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "I can do this...";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "S-Sorry human.";
                message_end = 0;
            }
        }
        else
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "Oh...";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "I deserve this...";
                message_end = 0;
            }
        }
        
        break;
    
    case 2:
        if (global.last_action_selected == "Action 1 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Here...";
                message_end = 0;
            }
            else
            {
                message[0] = "Here you go!";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 2 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Gosh, hun.#What are you on#about?";
                message_end = 0;
            }
            else
            {
                message[0] = "Do you really mean#that hun? ";
                message[1] = "Gosh, you've made me#the happiest florist#around town!";
                message_end = 1;
            }
        }
        else if (global.last_action_selected == "Action 3 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "About what I#expected...";
                message_end = 0;
            }
            else
            {
                message[0] = "Oh, come now,#deary.";
                message[1] = "I bet my flowers#would look very#pretty on your hat!";
                message_end = 1;
            }
        }
        else if (global.enemy_low_hp == false)
        {
            random_number = irandom_range(0, 3);
            
            if (random_number == 0)
            {
                message[0] = "I spend every#day to its#fullest!";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Would you like#any flowers my#dear? ";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "Sharing with others#is a great way#to show friendship!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "Aren't flowers just#magnificent?";
                message_end = 0;
            }
        }
        else
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "It's never too late#to accept a sign#of friendship, you#know.";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "I...I'm okay. ";
                message_end = 0;
            }
        }
        
        break;
    
    case 3:
        if (global.last_action_selected == "Action 1 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Better than yours.";
                message_end = 0;
            }
            else
            {
                message[0] = "Pah! Don't I know#it!";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 2 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Ooo, edgy.";
                message_end = 0;
            }
            else
            {
                message[0] = "I don't know,#CAN YOU?";
                message_end = 0;
            }
        }
        else if (global.last_action_selected == "Action 3 Message 0")
        {
            if (global.enemy_low_hp)
            {
                message[0] = "Come on, where'd#you learn to#insult?";
                message_end = 0;
            }
            else
            {
                message[0] = "SORRY ABOUT THAT!!!#Haha.";
                message_end = 0;
            }
        }
        else if (global.enemy_low_hp == false)
        {
            random_number = irandom_range(0, 3);
            
            if (random_number == 0)
            {
                message[0] = "Flowers make a#monster stronger! ";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "If you want a flower#from me, you gotta#prove yourself!";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "Flowers are great!#Orange, blue, yellow...#gotta love 'em!";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "My flowers are top#of the line!";
                message_end = 0;
            }
        }
        else
        {
            random_number = irandom_range(0, 1);
            
            if (random_number == 0)
            {
                message[0] = "You're kind of#a jerk, you know#  that?";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Just gotta hold#on.";
                message_end = 0;
            }
        }
        
        break;
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
