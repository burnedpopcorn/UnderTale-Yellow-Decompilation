var main_shop_screen_number, player_character;

depth = -room_height - 164;
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

player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_overworld;
        break;
}
