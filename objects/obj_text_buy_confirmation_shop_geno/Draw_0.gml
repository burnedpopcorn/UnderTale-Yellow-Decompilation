var buy_shop_screen_number;

buy_shop_screen_number = global.buy_shop_screen_number;
draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(obj_main_screen_shop.x + 230, obj_main_screen_shop.y + 10, string_hash_to_newline("Take it."));
draw_text(obj_main_screen_shop.x + 250, obj_main_screen_shop.y + 50, string_hash_to_newline("Yes"));
draw_text(obj_main_screen_shop.x + 250, obj_main_screen_shop.y + 65, string_hash_to_newline("No"));
