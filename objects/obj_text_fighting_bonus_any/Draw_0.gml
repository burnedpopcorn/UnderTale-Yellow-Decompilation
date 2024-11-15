draw_set_font(fnt_hachicro);
draw_set_color(c_color);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(obj_text_fighting_parent.x, obj_text_fighting_parent.y - disjoint_y, string_hash_to_newline(string(text)));
