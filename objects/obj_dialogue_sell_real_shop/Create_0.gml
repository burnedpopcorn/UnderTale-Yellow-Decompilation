depth = -room_height - 164;
var game_mode = global.game_mode;
var shop_name = global.shop_name;

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
        message[0] = "* Thank you! I will make#  good use of this!";
        portrait[0] = 1412;
        point[0] = 1;
        talk_script[0] = scr_talking_blackjack;
        
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
script_execute(scr_generate_text_counters);
