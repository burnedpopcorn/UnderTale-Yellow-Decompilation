var item_slot = global.item_slot[global.item_number_use];
draw_set_font(global.font_type_text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
script_execute(scr_draw_text_effect_twitchy_textbox_battle);

if (message_current == con_message_number && con_keep_previous == true && item_category == "consumable")
{
    battle_item_use_string = message[con_message_number - 1];
    script_execute(scr_draw_text_effect_twitchy_textbox_battle_item_use);
}
