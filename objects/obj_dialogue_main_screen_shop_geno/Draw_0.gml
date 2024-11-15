draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(obj_main_screen_shop.x + 20, obj_main_screen_shop.y + 10, string_hash_to_newline(message_draw), global.text_separation_shop, global.text_linebreak_limit_shop);
