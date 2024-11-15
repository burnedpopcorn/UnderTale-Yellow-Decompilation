var game_mode, shop_name, buy_shop_screen_number;

depth = -room_height - 164;
game_mode = global.game_mode;
shop_name = global.shop_name;
buy_shop_screen_number = global.buy_shop_screen_number;

if (shop_name == "Honeydew Resort Geno")
{
    if (global.snowdin_flag[19] == 0)
    {
        message[0] = "* (You took 60G from#  the shelf.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
        {
            action[i] = "Nothing";
            global.snowdin_flag[19] = 1;
        }
        
        message_end = 0;
        global.player_gold += 60;
    }
    else if (global.snowdin_flag[19] == 1)
    {
        message[0] = "* (There's nothing#  left.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 0;
    }
}

if (shop_name == "Cafe Dune Geno")
{
    if (global.dunes_flag[49] == 0)
    {
        message[0] = "* (You took 80G from#  the shelf.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 0;
        global.player_gold += 80;
        global.dunes_flag[49] = 1;
    }
    else if (global.dunes_flag[49] == 1)
    {
        message[0] = "* (There's nothing#  left.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 0;
    }
}

if (shop_name == "Wild East Gunshop Geno")
{
    if (global.dunes_flag[37] == 0)
    {
        message[0] = "* (There's a safe with#  the door left open.)";
        message[1] = "* (It's empty.)";
        point[0] = 1;
        point[1] = 1;
        talk_script[0] = scr_talking_normal;
        talk_script[1] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 1;
    }
    else if (global.dunes_flag[37] == 1)
    {
        message[0] = "* Nothing to take.";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 0;
    }
}

if (shop_name == "Wild East Saloon Geno")
{
    if (global.dunes_flag[38] == 0)
    {
        message[0] = "* (You took 100G#  from behind the#  bar.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        global.player_gold += 100;
        message_end = 0;
    }
    else if (global.dunes_flag[38] == 1)
    {
        message[0] = "* (There's no G#  left to take.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 0;
    }
}

if (shop_name == "Hotel Shop Geno")
{
    if (global.hotland_flag[11] == 0)
    {
        message[0] = "* (You took 500G#  from the register.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        global.player_gold += 500;
        message_end = 0;
        global.hotland_flag[11] = 1;
    }
    else if (global.hotland_flag[11] == 1)
    {
        message[0] = "* (There's nothing#  left.)";
        point[0] = 1;
        talk_script[0] = scr_talking_normal;
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 0;
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
