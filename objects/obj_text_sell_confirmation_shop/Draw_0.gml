var sell_shop_screen_number;

sell_shop_screen_number = global.sell_shop_screen_number;
draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(obj_talk_screen_shop.x + 30, obj_talk_screen_shop.y + 10, string_hash_to_newline("* Will you sell the " + global.item_slot[sell_shop_screen_number] + "?"));
draw_text(obj_talk_screen_shop.x + 60, obj_talk_screen_shop.y + 95, string_hash_to_newline("Yes"));
draw_set_halign(fa_right);
draw_text(obj_talk_screen_shop.bbox_right - 60, obj_talk_screen_shop.y + 95, string_hash_to_newline("No"));
draw_set_halign(fa_left);
