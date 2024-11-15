draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, string_hash_to_newline("Buy"));
draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 30, string_hash_to_newline("Sell"));
draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 50, string_hash_to_newline("Talk"));
draw_text(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 70, string_hash_to_newline("Exit"));
