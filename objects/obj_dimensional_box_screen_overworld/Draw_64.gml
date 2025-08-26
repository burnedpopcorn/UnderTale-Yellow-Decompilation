if (live_call())
    return global.live_result;

draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var xx = 8;
var yy = 8;
draw_sprite(spr_dimensional_box_screen_overworld, -1, xx, yy);
draw_sprite_ext(spr_dimensional_box_divider_overworld, -1, xx + 148, yy + 39, 0.5, 0.5, 0, c_white, 1);
var i;

for (i = 1; i <= 8; i++)
{
    if (global.item_slot[i] != "Nothing")
    {
        if (global.item_slot[i] == "Dihydrogen Monoxide")
            draw_text(xx + 32, yy + 12 + (i * 16), string_hash_to_newline("H2O"));
        else if (global.item_slot[i] == "Friendliness Pellets")
            draw_text(xx + 32, yy + 12 + (i * 16), string_hash_to_newline("F. Pellets"));
        else
            draw_text(xx + 32, yy + 12 + (i * 16), string_hash_to_newline(string(global.item_slot[i])));
    }
    else
    {
        draw_sprite_ext(spr_dimensional_box_blank_inventory_slot_overworld, -1, xx + 38, yy + 23 + (i * 16), 0.5, 0.5, 0, c_white, 1);
    }
}

for (i = 0; i <= 9; i++)
{
    if ((i + global.dimensional_box_offset) > (ds_list_size(global.box_slot_list) - 1))
    {
        draw_sprite_ext(spr_dimensional_box_blank_box_slot_overworld, -1, xx + 184, yy + 39 + (i * 16), 0.5, 0.5, 0, c_white, 1);
    }
    else
    {
        var item_name = ds_list_find_value(global.box_slot_list, i + global.dimensional_box_offset);
        
        if (item_name == "Dihydrogen Monoxide")
            item_name = "H2O";
        else if (item_name == "Friendliness Pellets")
            item_name = "F. Pellets";
        
        draw_text(xx + 178, yy + 28 + (i * 16), string_hash_to_newline(string(item_name)));
    }
}

if (global.dimensional_box_offset > 0)
    draw_sprite_ext(spr_dimensional_box_scroll_arrow, 0, 295, 50, 1, 1, 180, c_white, 1);

if ((i + global.dimensional_box_offset) <= ds_list_size(global.box_slot_list))
    draw_sprite(spr_dimensional_box_scroll_arrow, 0, 295, 185);
