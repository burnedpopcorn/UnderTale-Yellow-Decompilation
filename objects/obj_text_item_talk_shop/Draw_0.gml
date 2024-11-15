draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (i = 1; i < array_length_1d(global.shop_talk); i += 1)
    draw_text(obj_main_screen_shop.x + 30, obj_main_screen_shop.y + 10 + ((i - 1) * 20), string_hash_to_newline(string(global.shop_talk[i])));

draw_text(obj_main_screen_shop.x + 30, obj_main_screen_shop.y + 90, string_hash_to_newline("Exit"));
