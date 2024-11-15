var buy_shop_screen_number, item_check;

if (live_call())
    return global.live_result;

draw_set_font(fnt_battle);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
buy_shop_screen_number = clamp(global.buy_shop_screen_number, 1, 4);

for (i = 1; i < array_length(global.shop_item); i += 1)
{
    draw_set_color(c_white);
    item_check = global.shop_item[i];
    
    if (!scr_determine_item_stealable(item_check) || global.item_stock[global.shop_stock[i]] <= 0)
        draw_set_color(c_gray);
    else if (!scr_determine_item_purchasable(item_check))
        draw_set_color(c_red);
    
    draw_text(obj_main_screen_shop.x + 30, obj_main_screen_shop.y + 10 + ((i - 1) * 20), string_hash_to_newline(string(global.shop_gold_requirement[i]) + "G - " + string(global.shop_item[i])));
}

draw_set_color(c_white);
draw_text(obj_main_screen_shop.x + 30, obj_main_screen_shop.y + 90, string_hash_to_newline("Exit"));
