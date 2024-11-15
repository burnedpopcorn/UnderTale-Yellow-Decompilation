var player_gold, sell_shop_screen_number;

player_gold = global.player_gold;
sell_shop_screen_number = global.sell_shop_screen_number;
script_execute(scr_controls_shop_sell);

if (key_select)
{
    if (response_shop_screen_number == 1)
    {
        if (global.item_slot[sell_shop_screen_number] != "Nothing")
        {
            global.sell_shop_screen_number = 1;
            global.player_gold += scr_determine_sell_price_shop(global.item_slot[sell_shop_screen_number]);
            global.player_response = 1;
            scr_item_remove(global.item_slot[sell_shop_screen_number]);
            audio_play_sound(snd_shop_purchase, 20, 0);
            instance_create(0, 0, obj_dialogue_sell_real_shop);
            instance_destroy(obj_text_sell_confirmation_shop);
            instance_destroy();
        }
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
    if (key_left || key_right)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (response_shop_screen_number == 1)
            response_shop_screen_number = 2;
        else
            response_shop_screen_number = 1;
    }
}

if (response_shop_screen_number == 1)
{
    x = obj_talk_screen_shop.x + 49;
    y = obj_talk_screen_shop.y + 103;
}
else if (response_shop_screen_number == 2)
{
    x = obj_talk_screen_shop.bbox_right - 91;
    y = obj_talk_screen_shop.y + 103;
}
