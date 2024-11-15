var random_message;

execute_normal = true;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;

if (execute_normal == true)
{
    if (global.enemy_low_hp == true)
    {
        if (global.last_action_selected == "Action 2 Message 0")
            message[0] = "R-ew///i#...n,d<";
        else
            message[0] = "*Bzzztt(//#sz/_-__";
        
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        random_message = obj_quote_battle_tellyvis_a.random_message;
        
        switch (random_message)
        {
            case 0:
                message[0] = "Nothing worth it,#that's for sure.";
                break;
            
            case 1:
                message[0] = "Because your#antennas are#crooked. Tapes#win again.";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 1 Message 1")
    {
        random_message = obj_quote_battle_tellyvis_a.random_message;
        
        switch (random_message)
        {
            case 0:
                message[0] = "I'll admit,#this one#is good.";
                break;
            
            case 1:
                message[0] = "Hard disagree.";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_2 == "Action 2 Message 0")
    {
        random_message = obj_quote_battle_tellyvis_a.random_message;
        
        switch (random_message)
        {
            case 0:
                message[0] = "Ha!";
                break;
            
            case 1:
                message[0] = "Don't remind#me.";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 0")
    {
        random_message = obj_quote_battle_tellyvis_a.random_message;
        
        switch (random_message)
        {
            case 0:
                message[0] = "Can you detach#me while you're#at it?";
                break;
            
            case 1:
                message[0] = "Oh?";
                break;
        }
        
        message_end = 0;
    }
    else if (global.last_action_selected_3 == "Action 3 Message 1")
    {
        random_message = obj_quote_battle_tellyvis_a.random_message;
        
        switch (random_message)
        {
            case 0:
                message[0] = "Can't say#the same.";
                break;
            
            case 1:
                message[0] = "She's been#trying to get#a signal#forever.";
                break;
        }
        
        message_end = 0;
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
            message[0] = "Ugh, Telly's#entertainment#is so...#temporary.";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Word of advice,#please rewind#your tapes before#feeding me.";
            message_end = 0;
        }
        else if (random_number == 2)
        {
            message[0] = "Can someone#please shut#Ms. Tube-brain#up?";
            message_end = 0;
        }
        else if (random_number == 3)
        {
            message[0] = "Just... end it#all.";
            message_end = 0;
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
