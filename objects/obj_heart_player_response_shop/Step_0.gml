var player_gold = global.player_gold;
var buy_shop_screen_number = global.buy_shop_screen_number;
script_execute(scr_controls_shop_response);

if (key_select)
{
    if (response_shop_screen_number == 1)
    {
        if (player_gold < global.shop_gold_requirement[buy_shop_screen_number])
        {
            global.player_response = 1;
            global.able_to_buy = 1;
            audio_play_sound(snd_fail, 1, 0);
        }
        else if (global.item_slot[8] != "Nothing")
        {
            global.player_response = 1;
            global.able_to_buy = 2;
            audio_play_sound(snd_fail, 1, 0);
        }
        else
        {
            global.player_response = 1;
            global.able_to_buy = 0;
            
            for (var i = 1; i <= 8; i += 1)
            {
                if (global.item_slot[i] == "Nothing")
                {
                    global.item_slot[i] = global.shop_item[buy_shop_screen_number];
                    global.player_gold -= global.shop_gold_requirement[buy_shop_screen_number];
                    break;
                }
            }
            
            audio_play_sound(snd_shop_purchase, 20, false);
        }
        
        event_user(0);
        exit;
    }
    else if (response_shop_screen_number == 2)
    {
        global.player_response = 2;
        event_user(0);
        exit;
    }
}

if (key_revert && key_select == 0)
{
    global.player_response = 2;
    event_user(0);
    exit;
}

if (key_select == 0 && key_revert == 0)
{
    if (key_down && key_up == 0)
    {
        if (response_shop_screen_number == 2)
            response_shop_screen_number = 1;
        else
            response_shop_screen_number += 1;
    }
    
    if (key_up && key_down == 0)
    {
        if (response_shop_screen_number == 1)
            response_shop_screen_number = 2;
        else
            response_shop_screen_number -= 1;
    }
}

if (response_shop_screen_number == 1)
{
    x = obj_main_screen_shop.x + 229;
    y = obj_main_screen_shop.y + 59;
}
else if (response_shop_screen_number == 2)
{
    x = obj_main_screen_shop.x + 229;
    y = obj_main_screen_shop.y + 74;
}
