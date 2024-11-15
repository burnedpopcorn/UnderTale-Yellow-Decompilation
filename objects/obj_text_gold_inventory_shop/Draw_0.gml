item_max_count = 0;

for (i = 1; i <= 8; i += 1)
{
    if (global.item_slot[i] != "Nothing")
        item_max_count += 1;
}

draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(obj_main_screen_shop.x + 230, obj_main_screen_shop.y + 90, string_hash_to_newline(string(global.player_gold) + "G"));
draw_text(obj_main_screen_shop.x + 280, obj_main_screen_shop.y + 90, string_hash_to_newline(string(item_max_count) + "/8"));
