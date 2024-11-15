var item_slot;

item_slot = global.item_slot[3];
draw_set_font(fnt_determination_mono);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
script_execute(scr_draw_text_effect_twitchy_textbox_battle);

if (message_end > 0)
{
    if (item_slot == "Hot Dog...?")
    {
        battle_item_use_string = "* You eat the " + string(item_slot);
        script_execute(scr_draw_text_effect_twitchy_textbox_battle_item_use);
    }
}
