var main_shop_screen_number = global.main_shop_screen_number;
script_execute(scr_controls_shop_main);

if (key_select)
{
    audio_play_sound(snd_confirm, 1, 0);
    
    if (main_shop_screen_number == 1)
    {
        global.buy_shop_screen_number = 1;
        global.player_response = 0;
        global.able_to_buy = 0;
        instance_create(0, 0, obj_text_item_buy_shop);
        instance_create(obj_main_screen_shop.x + 19, obj_main_screen_shop.y + 19, obj_heart_buy_screen_shop_geno);
        event_user(0);
        exit;
    }
    else if (main_shop_screen_number == 2)
    {
        if (global.shop_name == "Steamworks Vendy Geno")
        {
            audio_play_sound(snd_fail, 1, 0);
        }
        else
        {
            instance_create(0, 120, obj_talk_screen_shop);
            instance_create(0, 0, obj_dialogue_steal_shop);
            event_user(0);
            exit;
        }
    }
    else if (main_shop_screen_number == 3)
    {
        instance_create(0, 0, obj_shop_fade_out_screen);
        scr_audio_fade_out(obj_shop_generator.shop_audio, 1300);
        instance_destroy();
    }
}

if (key_select == 0)
{
    if (key_down && key_up == 0)
    {
        if (main_shop_screen_number == 3)
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
            global.main_shop_screen_number = 3;
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
