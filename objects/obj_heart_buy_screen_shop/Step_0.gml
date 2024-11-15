var main_shop_screen_number, buy_shop_screen_number;

main_shop_screen_number = global.main_shop_screen_number;
buy_shop_screen_number = global.buy_shop_screen_number;
script_execute(scr_controls_shop_buy);

if (key_select)
{
    if (buy_shop_screen_number < 5)
    {
        if (main_shop_screen_number == 1)
        {
            if (scr_determine_item_purchasable(global.shop_item[buy_shop_screen_number]) == false)
            {
                audio_play_sound(snd_fail, 1, 0);
                exit;
            }
            
            audio_play_sound(snd_confirm, 1, 0);
            instance_create(0, 0, obj_text_buy_confirmation_shop);
            instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 59, obj_heart_player_response_shop);
            event_user(0);
            exit;
        }
        else if (main_shop_screen_number == 3)
        {
            instance_create(0, 120, obj_talk_screen_shop);
            instance_create(0, 0, obj_dialogue_talk_shop);
            event_user(1);
            event_user(0);
            exit;
        }
    }
    else if (buy_shop_screen_number == 5)
    {
        event_user(2);
        event_user(0);
        exit;
    }
}

if (key_revert && key_select == 0)
{
    event_user(2);
    event_user(0);
    exit;
}

if (key_select == 0 && key_revert == 0)
{
    if (key_down && key_up == 0)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (buy_shop_screen_number == item_max_count)
        {
            global.buy_shop_screen_number = 5;
            buy_shop_screen_number = global.buy_shop_screen_number;
        }
        else if (buy_shop_screen_number == 5)
        {
            global.buy_shop_screen_number = 1;
            buy_shop_screen_number = global.buy_shop_screen_number;
        }
        else
        {
            global.buy_shop_screen_number += 1;
        }
    }
    
    if (key_up && key_down == 0)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (buy_shop_screen_number == 1)
        {
            global.buy_shop_screen_number = 5;
            buy_shop_screen_number = global.buy_shop_screen_number;
        }
        else if (buy_shop_screen_number == 5)
        {
            global.buy_shop_screen_number = item_max_count;
            buy_shop_screen_number = global.buy_shop_screen_number;
        }
        else
        {
            global.buy_shop_screen_number -= 1;
        }
    }
}

buy_shop_screen_number = global.buy_shop_screen_number;

if (buy_shop_screen_number == 1)
{
    x = obj_main_screen_shop.x + 19;
    y = obj_main_screen_shop.y + 19;
}
else if (buy_shop_screen_number == 2)
{
    x = obj_main_screen_shop.x + 19;
    y = obj_main_screen_shop.y + 39;
}
else if (buy_shop_screen_number == 3)
{
    x = obj_main_screen_shop.x + 19;
    y = obj_main_screen_shop.y + 59;
}
else if (buy_shop_screen_number == 4)
{
    x = obj_main_screen_shop.x + 19;
    y = obj_main_screen_shop.y + 79;
}
else if (buy_shop_screen_number == 5)
{
    x = obj_main_screen_shop.x + 19;
    y = obj_main_screen_shop.y + 99;
}
