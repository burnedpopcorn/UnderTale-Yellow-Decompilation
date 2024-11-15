var shop_name;

shop_name = global.shop_name;
draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (shop_name == "Steamworks Vendy Geno")
{
    draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, string_hash_to_newline("Take"));
    draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 30, string_hash_to_newline("-"));
    draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 50, string_hash_to_newline("Exit"));
}
else
{
    draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, string_hash_to_newline("Take"));
    draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 30, string_hash_to_newline("Steal"));
    draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 50, string_hash_to_newline("Exit"));
}
