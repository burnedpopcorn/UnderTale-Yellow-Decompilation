depth = -room_height - 164;
var game_mode = global.game_mode;
var shop_name = global.shop_name;
var main_shop_screen_number = global.main_shop_screen_number;

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
    if (shop_name == "Honeydew Resort Geno" || shop_name == "Wild East Gunshop Geno" || shop_name == "Wild East Saloon Geno" || shop_name == "Cafe Dune Geno" || shop_name == "Hotel Shop Geno")
    {
        message[0] = "* But nobody came.";
        point[0] = 1;
        action[0] = "Nothing";
        talk_script[0] = scr_talking_normal;
    }
    else if (shop_name == "Steamworks Vendy Geno")
    {
        message[0] = "* ...";
        portrait[0] = 3325;
        point[0] = 1;
        talk_script[0] = scr_talking_vendy;
        
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
