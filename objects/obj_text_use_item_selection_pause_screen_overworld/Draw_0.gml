var item_slot;

item_slot = global.item_slot[global.item_pause_screen_number];
draw_set_font(global.font_type_text_0_5x);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(obj_dialogue_box_overworld.x + global.text_hdisjoint_overworld_normal, obj_dialogue_box_overworld.y + global.text_vdisjoint_overworld_normal, string_hash_to_newline(message_draw), global.text_separation_overworld, global.text_linebreak_limit_overworld);

if (message_current == con_message_number && con_keep_previous == true && item_category == "consumable")
    draw_text_ext(obj_dialogue_box_overworld.x + global.text_hdisjoint_overworld_normal, obj_dialogue_box_overworld.y + global.text_vdisjoint_overworld_normal, string_hash_to_newline(message[con_message_number - 1]), global.text_separation_overworld, global.text_linebreak_limit_overworld);
