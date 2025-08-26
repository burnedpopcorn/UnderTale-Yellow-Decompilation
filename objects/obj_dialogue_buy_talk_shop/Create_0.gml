depth = -room_height - 164;
var game_mode = global.game_mode;
var shop_name = global.shop_name;
var main_shop_screen_number = global.main_shop_screen_number;
var player_response = global.player_response;
var able_to_buy = global.able_to_buy;

if (shop_name == "Honeydew Resort Normal")
{
    if (main_shop_screen_number == 1)
    {
        if (player_response == 0)
        {
            message[0] = "Anything#look good?";
            portrait[0] = 1402;
            point[0] = 1;
            talk_script[0] = scr_talking_honeydew_bear;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        else if (player_response == 1)
        {
            if (able_to_buy == 0)
            {
                message[0] = "Thanks,#stranger!";
                portrait[0] = 1401;
                point[0] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 1)
            {
                message[0] = "Sorry, you#need more#money...";
                portrait[0] = 1406;
                point[0] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 2)
            {
                message[0] = "Looks like#you're full...";
                portrait[0] = 1406;
                point[0] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
        }
        else if (player_response == 2)
        {
            message[0] = "Does it#look bad?";
            portrait[0] = 1407;
            point[0] = 1;
            talk_script[0] = scr_talking_honeydew_bear;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
    }
    else if (main_shop_screen_number == 3)
    {
        message[0] = "You w-want#to talk?";
        portrait[0] = 1404;
        point[0] = 1;
        talk_script[0] = scr_talking_honeydew_bear;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
}

if (shop_name == "Wild East Gunshop")
{
    if (main_shop_screen_number == 1)
    {
        if (player_response == 0)
        {
            message[0] = "Interested#in anything?";
            portrait[0] = 1412;
            point[0] = 1;
            talk_script[0] = scr_talking_blackjack;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        else if (player_response == 1)
        {
            if (able_to_buy == 0)
            {
                message[0] = "I thank#you!";
                portrait[0] = 1412;
                point[0] = 1;
                talk_script[0] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 1)
            {
                message[0] = "I need#the proper#sum.";
                portrait[0] = 1412;
                point[0] = 1;
                talk_script[0] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 2)
            {
                message[0] = "You have#your hands#full.";
                portrait[0] = 1412;
                point[0] = 1;
                talk_script[0] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
        }
        else if (player_response == 2)
        {
            message[0] = "Change your#mind?";
            portrait[0] = 1412;
            point[0] = 1;
            talk_script[0] = scr_talking_blackjack;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
    }
    else if (main_shop_screen_number == 3)
    {
        message[0] = "Ask away!";
        portrait[0] = 1412;
        point[0] = 1;
        talk_script[0] = scr_talking_blackjack;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
}

if (shop_name == "Wild East Saloon")
{
    if (main_shop_screen_number == 1)
    {
        if (player_response == 0)
        {
            message[0] = "Here's the#menu!";
            portrait[0] = 1423;
            point[0] = 1;
            talk_script[0] = scr_talking_blackjack;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        else if (player_response == 1)
        {
            if (able_to_buy == 0)
            {
                message[0] = "Much#appreciated!";
                portrait[0] = 1423;
                point[0] = 1;
                talk_script[0] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 1)
            {
                message[0] = "Your funds'r#insufficient,#kid.";
                portrait[0] = 1423;
                point[0] = 1;
                talk_script[0] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 2)
            {
                message[0] = "Quit carryin'#so much.";
                portrait[0] = 1423;
                point[0] = 1;
                talk_script[0] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
        }
        else if (player_response == 2)
        {
            message[0] = "Not interested#I take it.";
            portrait[0] = 1423;
            point[0] = 1;
            talk_script[0] = scr_talking_blackjack;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
    }
    else if (main_shop_screen_number == 3)
    {
        message[0] = "What do ya#wanna know?";
        portrait[0] = 1423;
        point[0] = 1;
        talk_script[0] = scr_talking_blackjack;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
}

if (shop_name == "Steamworks Vendy")
{
    if (main_shop_screen_number == 1)
    {
        if (player_response == 0)
        {
            if (global.sworks_flag[26] < 2)
            {
                message[0] = "Go away.";
                portrait[0] = 3325;
            }
            else
            {
                message[0] = "Choose an#item!";
                portrait[0] = 131;
            }
            
            point[0] = 1;
            talk_script[0] = scr_talking_vendy;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        else if (player_response == 1)
        {
            if (able_to_buy == 0)
            {
                if (global.sworks_flag[26] < 2)
                {
                    message[0] = "Curse my#programming.";
                    portrait[0] = 1281;
                }
                
                message[0] = "Item#dispensed!";
                portrait[0] = 131;
                point[0] = 1;
                talk_script[0] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 1)
            {
                if (global.sworks_flag[26] < 2)
                {
                    message[0] = "You are broke.#lol.";
                    portrait[0] = 3744;
                }
                else
                {
                    message[0] = "* You do not#have enough money#  :[";
                    portrait[0] = 863;
                }
                
                point[0] = 1;
                talk_script[0] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 2)
            {
                if (global.sworks_flag[26] < 2)
                {
                    message[0] = "You can't#carry any#more. Too#bad.";
                    portrait[0] = 3325;
                }
                else
                {
                    message[0] = "You do not#have enough#space :[";
                    portrait[0] = 863;
                }
                
                point[0] = 1;
                talk_script[0] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
        }
        else if (player_response == 2)
        {
            if (global.sworks_flag[26] < 2)
            {
                message[0] = "Thank you#for backing#out.";
                portrait[0] = 131;
            }
            else
            {
                message[0] = "Changed your#mind?";
                portrait[0] = 131;
            }
            
            point[0] = 1;
            talk_script[0] = scr_talking_vendy;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
    }
    else if (main_shop_screen_number == 3)
    {
        if (global.sworks_flag[26] < 2)
        {
            message[0] = "* Why why#  why why-";
            portrait[0] = 2663;
        }
        else
        {
            message[0] = "* Yes?";
            portrait[0] = 131;
        }
        
        point[0] = 1;
        talk_script[0] = scr_talking_vendy;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
}

if (shop_name == "Hotel Shop")
{
    portrait_alt[0] = 470;
    message_alt[0] = "";
    
    if (main_shop_screen_number == 1)
    {
        message[0] = "";
        
        if (player_response == 0)
        {
            message[0] = "Take a look!";
            portrait[0] = 3199;
            point[0] = 1;
            talk_script[0] = scr_talking_hotel_shopkeeper;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        else if (player_response == 1)
        {
            if (able_to_buy == 0)
            {
                message[0] = "Appreciate#it!";
                portrait[0] = 3199;
                point[0] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 1)
            {
                message_alt[0] = "< Money.#We need#it. >";
                portrait[0] = 3629;
                portrait_alt[0] = 1959;
                point[0] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
            else if (able_to_buy == 2)
            {
                message_alt[0] = "< You're#carryin'#WAY too#much!>";
                portrait[0] = 3629;
                portrait_alt[0] = 1959;
                point[0] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
            }
        }
        else if (player_response == 2)
        {
            message[0] = "Oh?";
            portrait[0] = 3301;
            point[0] = 1;
            talk_script[0] = scr_talking_hotel_shopkeeper;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
    }
    else if (main_shop_screen_number == 3)
    {
        message[0] = "What's on#your mind?";
        portrait[0] = 1492;
        point[0] = 1;
        talk_script[0] = scr_talking_hotel_shopkeeper;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
}

message_current = 0;
message_end = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
message_draw_alt = "";

if (shop_name == "Hotel Shop")
{
    var message_alt_length = string_length(message_alt[message_current]);
    
    if (message_alt_length > message_length)
        message_length = message_alt_length;
}

script_execute(scr_generate_text_counters);
