if (live_call())
    return global.live_result;

var main_shop_screen_number = global.main_shop_screen_number;
var sell_shop_screen_number = global.sell_shop_screen_number;
var inventory_max = 0;

for (var i = 1; i <= 8; i++)
{
    if (global.item_slot[i] == "Nothing")
        break;
    
    inventory_max = i;
}

script_execute(scr_controls_shop_sell);

if (key_select)
{
    if (sell_shop_screen_number < 9)
    {
        if (global.item_slot[sell_shop_screen_number] == "H. Acid")
        {
            audio_play_sound(snd_fail, 1, 0);
        }
        else
        {
            audio_play_sound(snd_confirm, 1, 0);
            instance_create(0, 0, obj_text_sell_confirmation_shop);
            instance_create(obj_talk_screen_shop.x + 229, obj_talk_screen_shop.y + 59, obj_heart_player_response_sell_shop);
            instance_destroy(obj_text_item_sell_shop);
            instance_destroy();
            exit;
        }
    }
    else if (sell_shop_screen_number == 9)
    {
        event_user(2);
        exit;
    }
}

if (key_revert && key_select == 0)
{
    event_user(2);
    exit;
}

if (inventory_max == 0)
    global.sell_shop_screen_number = 9;

if (key_select == 0 && key_revert == 0 && inventory_max != 0)
{
    if (key_down && key_up == 0)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (sell_shop_screen_number == 4 || sell_shop_screen_number == inventory_max)
        {
            global.sell_shop_screen_number = 9;
            sell_shop_screen_number = global.sell_shop_screen_number;
        }
        else if (sell_shop_screen_number == 9)
        {
            global.sell_shop_screen_number = 1;
            sell_shop_screen_number = global.sell_shop_screen_number;
        }
        else if (sell_shop_screen_number < inventory_max)
        {
            global.sell_shop_screen_number += 1;
        }
    }
    
    if (key_up && key_down == 0)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (sell_shop_screen_number == 1 || sell_shop_screen_number == 5)
        {
            global.sell_shop_screen_number = 9;
            sell_shop_screen_number = global.sell_shop_screen_number;
        }
        else if (sell_shop_screen_number == 9)
        {
            global.sell_shop_screen_number = 4;
            
            if (inventory_max < 4)
                global.sell_shop_screen_number = inventory_max;
            
            sell_shop_screen_number = global.sell_shop_screen_number;
        }
        else
        {
            global.sell_shop_screen_number -= 1;
        }
    }
    
    if (key_right || key_left)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        if (sell_shop_screen_number <= 4)
        {
            if (global.item_slot[sell_shop_screen_number + 4] != "Nothing")
                global.sell_shop_screen_number += 4;
            
            sell_shop_screen_number = global.sell_shop_screen_number;
        }
        else if (sell_shop_screen_number < 9)
        {
            global.sell_shop_screen_number -= 4;
            sell_shop_screen_number = global.sell_shop_screen_number;
        }
    }
}

sell_shop_screen_number = global.sell_shop_screen_number;

if (sell_shop_screen_number == 1)
{
    x = obj_talk_screen_shop.x + 19;
    y = obj_talk_screen_shop.y + 19;
}
else if (sell_shop_screen_number == 2)
{
    x = obj_talk_screen_shop.x + 19;
    y = obj_talk_screen_shop.y + 39;
}
else if (sell_shop_screen_number == 3)
{
    x = obj_talk_screen_shop.x + 19;
    y = obj_talk_screen_shop.y + 59;
}
else if (sell_shop_screen_number == 4)
{
    x = obj_talk_screen_shop.x + 19;
    y = obj_talk_screen_shop.y + 79;
}
else if (sell_shop_screen_number == 5)
{
    x = obj_talk_screen_shop.x + 179;
    y = obj_talk_screen_shop.y + 19;
}
else if (sell_shop_screen_number == 6)
{
    x = obj_talk_screen_shop.x + 179;
    y = obj_talk_screen_shop.y + 39;
}
else if (sell_shop_screen_number == 7)
{
    x = obj_talk_screen_shop.x + 179;
    y = obj_talk_screen_shop.y + 59;
}
else if (sell_shop_screen_number == 8)
{
    x = obj_talk_screen_shop.x + 179;
    y = obj_talk_screen_shop.y + 79;
}
else if (sell_shop_screen_number == 9)
{
    x = obj_talk_screen_shop.x + 19;
    y = obj_talk_screen_shop.y + 99;
}
