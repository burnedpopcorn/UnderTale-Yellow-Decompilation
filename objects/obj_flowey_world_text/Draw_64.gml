draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_alpha(draw_alpha);

if (soundfont != 96)
    draw_set_color(c_gray);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(57, 170, string_hash_to_newline(message_draw));
draw_set_alpha(1);
