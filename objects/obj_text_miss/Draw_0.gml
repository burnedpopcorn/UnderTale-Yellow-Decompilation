draw_set_font(fnt_hachicro);
draw_set_color(c_gray);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(image_alpha);
draw_text(x, y, string_hash_to_newline("MISS"));
draw_set_alpha(1);
