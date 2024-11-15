draw_set_font(global.font_type_text);
draw_set_alpha(image_alpha);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(160, 320, string_hash_to_newline(message_draw));
draw_set_alpha(1);
