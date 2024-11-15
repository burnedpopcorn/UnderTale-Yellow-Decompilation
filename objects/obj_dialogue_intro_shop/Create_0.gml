var game_mode, shop_name, buy_shop_screen_number;

depth = -room_height - 164;
game_mode = global.game_mode;
shop_name = global.shop_name;
buy_shop_screen_number = global.buy_shop_screen_number;

if (game_mode == "yellow")
{
    if (shop_name == "Steamworks Vendy" || shop_name == "Steamworks Vendy Geno")
    {
        if (global.route != 3)
        {
            if (global.sworks_flag[26] < 2)
            {
                message[0] = "* Vendy Model 01 - System boot...";
                message[1] = "* Scanning customer...";
                portrait[0] = 2856;
                portrait[1] = 2875;
                point[0] = 1;
                point[1] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 1;
            }
            else
            {
                message[0] = "* Vendy Model 01 - System boot...";
                message[1] = "* Scanning customer...";
                message[2] = "* Steamworks Chemist present :]";
                portrait[0] = 2856;
                portrait[1] = 2875;
                portrait[2] = 131;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 2;
            }
        }
        else
        {
            message[0] = "* Vendy Model 01 - System boot...";
            message[1] = "* Scanning customer...";
            message[2] = "* !";
            message[3] = "* Attempting shut down!";
            portrait[0] = 2856;
            portrait[1] = 2875;
            portrait[2] = 2663;
            portrait[3] = 863;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            point[3] = 1;
            talk_script[0] = scr_talking_vendy;
            talk_script[1] = scr_talking_vendy;
            talk_script[2] = scr_talking_vendy;
            talk_script[3] = scr_talking_vendy;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 3;
        }
    }
}

message_advance = false;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
skippable = false;
alarm[0] = 60;
alarm[1] = 120;
script_execute(scr_generate_text_counters);
