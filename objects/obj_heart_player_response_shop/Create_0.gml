var player_character;

depth = -room_height - 164;
response_shop_screen_number = 1;
x = obj_main_screen_shop.x + 229;
y = obj_main_screen_shop.y + 59;
player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_overworld;
        break;
}
