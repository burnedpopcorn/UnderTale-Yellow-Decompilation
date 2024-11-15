draw_set_font(global.font_type_text_0_5x);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (global.text_box_open == true && instance_exists(obj_dialogue_box_overworld))
    draw_text_ext(obj_dialogue_box_overworld.x + global.text_hdisjoint_overworld_normal, obj_dialogue_box_overworld.y + global.text_vdisjoint_overworld_normal, string_hash_to_newline(message_draw), global.text_separation_overworld, global.text_linebreak_limit_overworld);
