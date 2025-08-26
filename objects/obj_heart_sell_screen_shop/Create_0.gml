depth = -room_height - 164;
var main_shop_screen_number = global.main_shop_screen_number;
var sell_shop_screen_number = global.sell_shop_screen_number;
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

var player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_overworld;
        break;
}
