draw_set_font(fnt_arcade);
draw_set_halign(fa_center);
draw_set_color(make_colour_rgb(draw_color, draw_color, 255));
draw_text_transformed(x, y, string_hash_to_newline(score_amount), 0.5, 0.5, 0);
draw_set_halign(fa_left);
draw_set_color(c_white);
