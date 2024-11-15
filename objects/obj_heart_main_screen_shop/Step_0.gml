var main_shop_screen_number;

main_shop_screen_number = global.main_shop_screen_number;
script_execute(scr_controls_shop_main);

if (key_select)
{
    audio_play_sound(snd_confirm, 1, 0);
    
    if (main_shop_screen_number == 1)
    {
        global.buy_shop_screen_number = 1;
        global.player_response = 0;
        global.able_to_buy = 0;
        instance_create(0, 0, obj_dialogue_buy_talk_shop);
        instance_create(0, 0, obj_text_item_buy_shop);
        instance_create(obj_main_screen_shop.x + 19, obj_main_screen_shop.y + 19, obj_heart_buy_screen_shop);
        event_user(0);
        exit;
    }
    else if (main_shop_screen_number == 2)
    {
        switch (global.shop_name)
        {
            default:
                instance_create(0, 120, obj_talk_screen_shop);
                instance_create(0, 0, obj_dialogue_sell_shop);
                instance_destroy(obj_main_screen_shop);
                break;
            
            case "Wild East Gunshop":
                instance_create(0, 0, obj_text_item_sell_shop);
                instance_create(obj_main_screen_shop.x, obj_main_screen_shop.y, obj_talk_screen_shop);
                instance_create(obj_main_screen_shop.x + 19, obj_main_screen_shop.y + 19, obj_heart_sell_screen_shop);
                instance_destroy(obj_main_screen_shop);
                break;
        }
        
        with (obj_item_description_screen_shop)
            instance_destroy();
        
        event_user(0);
        exit;
    }
    else if (main_shop_screen_number == 3)
    {
        global.buy_shop_screen_number = 1;
        global.player_response = 0;
        global.able_to_buy = 0;
        instance_create(0, 0, obj_dialogue_buy_talk_shop);
        instance_create(0, 0, obj_text_item_talk_shop);
        instance_create(obj_main_screen_shop.x + 19, obj_main_screen_shop.y + 19, obj_heart_buy_screen_shop);
        
        if (global.dunes_flag[20] >= 9 && global.dunes_flag[24] == 0)
        {
            if (global.shop_name == "Wild East Saloon" || global.shop_name == "Wild East Gunshop")
            {
                instance_create(0, 120, obj_talk_screen_shop);
                instance_create(0, 0, obj_dialogue_talk_shop);
                
                with (obj_heart_buy_screen_shop)
                {
                    event_user(1);
                    event_user(0);
                }
            }
        }
        
        if (global.route == 1 && global.sworks_flag[0] > 0)
        {
            if (global.shop_name == "Wild East Saloon")
            {
                instance_create(0, 120, obj_talk_screen_shop);
                instance_create(0, 0, obj_dialogue_talk_shop);
                
                with (obj_heart_buy_screen_shop)
                {
                    event_user(1);
                    event_user(0);
                }
            }
        }
        
        if (global.party_member != -4)
        {
            if (global.shop_name == "Hotel Shop")
            {
                instance_create(0, 120, obj_talk_screen_shop);
                instance_create(0, 0, obj_dialogue_talk_shop);
                
                with (obj_heart_buy_screen_shop)
                {
                    event_user(1);
                    event_user(0);
                }
            }
        }
        
        event_user(0);
        exit;
    }
    else if (main_shop_screen_number == 4)
    {
        instance_create(0, 120, obj_talk_screen_shop);
        instance_create(0, 0, obj_dialogue_exit_shop);
        
        with (obj_main_screen_shop)
            instance_destroy();
        
        with (obj_item_description_screen_shop)
            instance_destroy();
        
        event_user(0);
        exit;
    }
}

if (key_select == 0)
{
    if (key_down && key_up == 0)
    {
        if (main_shop_screen_number == 4)
        {
            global.main_shop_screen_number = 1;
            main_shop_screen_number = global.main_shop_screen_number;
        }
        else
        {
            global.main_shop_screen_number += 1;
        }
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
    
    if (key_up && key_down == 0)
    {
        if (main_shop_screen_number == 1)
        {
            global.main_shop_screen_number = 4;
            main_shop_screen_number = global.main_shop_screen_number;
        }
        else
        {
            global.main_shop_screen_number -= 1;
        }
        
        audio_play_sound(snd_mainmenu_select, 1, 0);
    }
}

main_shop_screen_number = global.main_shop_screen_number;

if (main_shop_screen_number == 1)
{
    x = obj_main_screen_shop.x + 229;
    y = obj_main_screen_shop.y + 19;
}
else if (main_shop_screen_number == 2)
{
    x = obj_main_screen_shop.x + 229;
    y = obj_main_screen_shop.y + 39;
}
else if (main_shop_screen_number == 3)
{
    x = obj_main_screen_shop.x + 229;
    y = obj_main_screen_shop.y + 59;
}
else if (main_shop_screen_number == 4)
{
    x = obj_main_screen_shop.x + 229;
    y = obj_main_screen_shop.y + 79;
}
