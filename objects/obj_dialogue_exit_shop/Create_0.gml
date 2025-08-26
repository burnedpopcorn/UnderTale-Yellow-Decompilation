var shop_name = global.shop_name;
depth = -room_height - 164;
var game_mode = global.game_mode;
shop_name = global.shop_name;

if (game_mode == "customs")
{
    if (shop_name == "Mart-2-Go")
    {
        message[0] = "* Alright, catch you on the flip#  side!#* Peace out!";
        portrait_author_head[0] = spr_author_head_normal_new_shop;
        portrait_author_torso[0] = spr_author_torso_normal_new_shop;
        point[0] = 1;
        talk_script[0] = scr_talking_author;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
}
else if (game_mode == "yellow")
{
    if (shop_name == "Mart-2-Go")
    {
        message[0] = "* Alright, catch you on the flip#  side!#* Peace out!";
        portrait_author_head[0] = spr_author_head_normal_new_shop;
        portrait_author_torso[0] = spr_author_torso_normal_new_shop;
        point[0] = 1;
        talk_script[0] = scr_talking_author;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Honeydew Resort Normal")
    {
        message[0] = "* See ya! Thanks for being so#  kind!";
        portrait[0] = 1410;
        point[0] = 1;
        talk_script[0] = scr_talking_honeydew_bear;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Wild East Gunshop")
    {
        message[0] = "* I wish you good travels!";
        portrait[0] = 1412;
        point[0] = 1;
        talk_script[0] = scr_talking_blackjack;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Wild East Saloon")
    {
        message[0] = "* Have fun out there!";
        portrait[0] = 1423;
        point[0] = 1;
        talk_script[0] = scr_talking_blackjack;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Steamworks Vendy")
    {
        if (global.sworks_flag[26] < 2)
        {
            message[0] = "* Yes, bye, thanks for nothing.";
            portrait[0] = 3325;
        }
        else
        {
            message[0] = "* Thank you for using the Vendy#  service!";
            portrait[0] = 131;
        }
        
        point[0] = 1;
        talk_script[0] = scr_talking_vendy;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Hotel Shop")
    {
        message[0] = "* Thanks for your time!";
        portrait[0] = 3199;
        message_alt[0] = "* Thanks for your time!#* < Don't let the door hit ya on#  the way out! >";
        portrait_alt[0] = 1959;
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
