draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (i = 1; i < array_length_1d(global.item_slot); i += 1)
{
    if (global.item_slot[i] == "Nothing")
    {
        if (i == 1)
            draw_text(obj_talk_screen_shop.x + 30, obj_talk_screen_shop.y + 10 + ((i - 1) * 20), string_hash_to_newline("Inventory Empty"));
        
        break;
    }
    
    var item_price = scr_determine_sell_price_shop(global.item_slot[i]);
    var item_name = string(global.item_slot[i]);
    
    if (item_name == "Dihydrogen Monoxide")
        item_name = "H2O";
    else if (item_name == "Friendliness Pellets")
        item_name = "F. Pellets";
    
    draw_text(obj_talk_screen_shop.x + 30 + ((i > 4) * 160), obj_talk_screen_shop.y + 10 + ((i - 1 - ((i > 4) * 4)) * 20), string_hash_to_newline(item_name + " - " + string(item_price) + "G"));
}

draw_text(obj_talk_screen_shop.x + 30, obj_talk_screen_shop.y + 90, string_hash_to_newline("Exit"));
