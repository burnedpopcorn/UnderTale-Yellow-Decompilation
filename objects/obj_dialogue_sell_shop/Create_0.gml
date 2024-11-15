var game_mode, shop_name, sell_count, message_alt_length;

depth = -room_height - 164;
game_mode = global.game_mode;
shop_name = global.shop_name;
sell_count = global.sell_count;

if (game_mode == "customs")
{
    if (shop_name == "Mart-2-Go")
    {
        if (sell_count == 0)
        {
            message[0] = "* Give me a break, buddy!#* You honestly think I'm gonna buy#  your rotton food and twigs you#  found off of the ground?!";
            message[1] = "* What do I look like?#* A conventional NPC who will just#  buy any random junk you come#  across?";
            message[2] = "* You gotta give me more credit#  than that!#* You'll have better luck looking#  elsewhere.";
            portrait_author_head[0] = spr_author_head_normal_new_shop;
            portrait_author_torso[0] = spr_author_torso_normal_new_shop;
            portrait_author_head[1] = spr_author_head_normal_new_shop;
            portrait_author_torso[1] = spr_author_torso_normal_new_shop;
            portrait_author_head[2] = spr_author_head_normal_new_shop;
            portrait_author_torso[2] = spr_author_torso_normal_new_shop;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            talk_script[0] = scr_talking_author;
            talk_script[1] = scr_talking_author;
            talk_script[2] = scr_talking_author;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 2;
        }
        else if (sell_count == 1)
        {
            message[0] = "* Look, if you are in need of some#  money, why not build a fangame,#  set up a Gamejolt or itch.io#  page, and hope for donations?";
            message[1] = "* I wonder if it's even legal to#  accept donations from fangames...";
            portrait_author_head[0] = spr_author_head_normal_new_shop;
            portrait_author_torso[0] = spr_author_torso_normal_new_shop;
            portrait_author_head[1] = spr_author_head_normal_new_shop;
            portrait_author_torso[1] = spr_author_torso_normal_new_shop;
            point[0] = 1;
            point[1] = 1;
            talk_script[0] = scr_talking_author;
            talk_script[1] = scr_talking_author;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 1;
        }
    }
}
else if (game_mode == "yellow")
{
    if (shop_name == "Honeydew Resort Normal")
    {
        if (sell_count == 0)
        {
            message[0] = "* I appreciate the offer, but...";
            message[1] = "* My dad would ground me if I#  bought items off strangers.";
            message[2] = "* That's what he always told me.";
            message[3] = "* \"Don't buy items off strangers.\"";
            message[4] = "* Heh heh...";
            portrait[0] = 1406;
            portrait[1] = 1407;
            portrait[2] = 1402;
            portrait[3] = 1401;
            portrait[4] = 1404;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            point[3] = 1;
            point[4] = 1;
            talk_script[0] = scr_talking_honeydew_bear;
            talk_script[1] = scr_talking_honeydew_bear;
            talk_script[2] = scr_talking_honeydew_bear;
            talk_script[3] = scr_talking_honeydew_bear;
            talk_script[4] = scr_talking_honeydew_bear;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            action[2] = "Override";
            action_follow_up[2] = "Nothing";
            action_script[2] = scr_shop_animation_override_honeydew_bear_hand_deux;
            message_end = 4;
        }
        else if (sell_count == 1)
        {
            message[0] = "* I already declined...";
            message[1] = "* Was... was I not nice enough?";
            message[2] = "* Over a year of working here and#  I still screw everything up.";
            portrait[0] = 1408;
            portrait[1] = 1407;
            portrait[2] = 1403;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            talk_script[0] = scr_talking_honeydew_bear;
            talk_script[1] = scr_talking_honeydew_bear;
            talk_script[2] = scr_talking_honeydew_bear;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            action[2] = "Override";
            action_follow_up[2] = "Nothing";
            action_script[2] = scr_shop_animation_override_honeydew_bear_head_down;
            message_end = 2;
        }
    }
    else if (shop_name == "Wild East Saloon")
    {
        if (sell_count == 0)
        {
            message[0] = "* This is a bar, not a marketplace.";
            message[1] = "* Try Blackjack down the road#  if you wanna barter.";
            portrait[0] = 1427;
            portrait[1] = 1423;
            point[0] = 1;
            point[1] = 1;
            talk_script[0] = scr_talking_dina;
            talk_script[1] = scr_talking_dina;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 1;
        }
        else if (sell_count == 1)
        {
            message[0] = "* I already told ya to ask#  Blackjack about sellin'.";
            portrait[0] = 1427;
            point[0] = 1;
            talk_script[0] = scr_talking_dina;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 0;
        }
    }
    else if (shop_name == "Steamworks Vendy")
    {
        if (global.sworks_flag[26] < 2)
        {
            message[0] = "* Oh yes! I will gladly dispense#  your garbage! Hand it over!";
            message[1] = "* Please stop.";
            portrait[0] = 131;
            portrait[1] = 863;
            point[0] = 1;
            point[1] = 1;
            talk_script[0] = scr_talking_vendy;
            talk_script[1] = scr_talking_vendy;
        }
        else
        {
            message[0] = "* Unfortunately, I cannot#  receive any of your items, only#  dispense my own.";
            message[1] = "* I am terribly sorry!";
            portrait[0] = 863;
            portrait[1] = 2663;
            point[0] = 1;
            point[1] = 1;
            talk_script[0] = scr_talking_vendy;
            talk_script[1] = scr_talking_vendy;
        }
        
        for (i = 0; i < array_length_1d(message); i += 1)
            action[i] = "Nothing";
        
        message_end = 1;
    }
    else if (shop_name == "Hotel Shop")
    {
        message[0] = "* Sell an item to us? Buttons,#  what do you think?#\t";
        message_alt[0] = "* Sell an item to us? Buttons,#  what do you think?     #* < No deal! No can do! Not in a#  hundred years! >#";
        message[1] = "* Hmm, hundred and one?";
        message_alt[1] = "* Hmm, hundred and one?     #* < By that time you'll be dead#  and I'll be runnin' the shop by#  myself! >#";
        message[2] = "* Hey that's pretty dark,#  Buttons!#";
        message_alt[2] = "* Hey that's pretty dark,#  Buttons!     #* < We live in a frickin' cave,#  it's always dark! >";
        message[3] = "* Hahahaha!";
        message_alt[3] = "#* < Heheheheh! >";
        portrait[0] = 3301;
        portrait[1] = 1492;
        portrait[2] = 3301;
        portrait[3] = 3199;
        portrait_alt[0] = 1959;
        portrait_alt[1] = 1959;
        portrait_alt[2] = 1959;
        portrait_alt[3] = 1959;
        obj_hotel_shop_puppet.shopkeeper_sprite[3] = 3199;
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

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
message_draw_alt = "";

if (shop_name == "Hotel Shop")
{
    message_alt_length = string_length(message_alt[message_current]);
    
    if (message_alt_length > message_length)
        message_length = message_alt_length;
}

script_execute(scr_generate_text_counters);
