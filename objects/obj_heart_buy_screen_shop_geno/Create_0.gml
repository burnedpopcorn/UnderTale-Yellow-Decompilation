depth = -room_height - 164;
var main_shop_screen_number = global.main_shop_screen_number;
var buy_shop_screen_number = global.buy_shop_screen_number;
item_max_count = 1;

if (main_shop_screen_number == 1)
{
    for (i = 2; i <= 4; i += 1)
    {
        if (global.shop_item[i] != "Nothing")
            item_max_count += 1;
    }
}
else if (main_shop_screen_number == 3)
{
    for (i = 2; i <= 4; i += 1)
    {
        if (global.shop_talk[i] != "Nothing")
            item_max_count += 1;
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

var player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_overworld;
        break;
}
