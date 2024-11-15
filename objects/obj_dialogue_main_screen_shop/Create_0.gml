var game_mode, shop_name, main_shop_screen_number, message_alt_length;

depth = -room_height - 164;
game_mode = global.game_mode;
shop_name = global.shop_name;
main_shop_screen_number = global.main_shop_screen_number;

if (game_mode == "customs")
{
    if (shop_name == "Mart-2-Go")
    {
        message[0] = "* Hey, you gonna buy#  an item or what?";
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
        message[0] = "* Uhh... so how did you get here, anyway?";
        portrait_author_head[0] = spr_author_head_normal_new_shop;
        portrait_author_torso[0] = spr_author_torso_normal_new_shop;
        point[0] = 1;
        talk_script[0] = scr_talking_author;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Honeydew Resort Normal")
    {
        message[0] = "* W-welcome to the#  Honeydew Resort!#  Please, look around.#  (was that the line?)";
        portrait[0] = 1410;
        point[0] = 1;
        talk_script[0] = scr_talking_honeydew_bear;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Wild East Gunshop")
    {
        message[0] = "* Greetings!#* Take a gander! Just#  don't touch anything.";
        portrait[0] = 1412;
        point[0] = 1;
        talk_script[0] = scr_talking_blackjack;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Wild East Saloon")
    {
        message[0] = "* Howdy howdy, human!#  Take a gander at my#  wares.#* Hard-hittin' stuff is#  off limits!";
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
            message[0] = "* Unauthorized child#  detected. Go away.";
            portrait[0] = 1281;
        }
        else
        {
            message[0] = "* How may I be of#  service?";
            portrait[0] = 131;
        }
        
        point[0] = 1;
        talk_script[0] = scr_talking_vendy;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
    }
    else if (shop_name == "Hotel Shop")
    {
        message[0] = "* Welcome to Bits &#  Bites!";
        portrait[0] = 1492;
        message_alt[0] = "* Welcome to Bits &#  Bites!#* < Buy something,#  will ya? >";
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
message_draw_alt = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);

if (shop_name == "Hotel Shop")
{
    message_alt_length = string_length(message_alt[message_current]);
    
    if (message_alt_length > message_length)
        message_length = message_alt_length;
}

script_execute(scr_generate_text_counters);
