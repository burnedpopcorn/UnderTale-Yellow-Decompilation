if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
draw_set_color(c_gray);
draw_set_alpha(draw_alpha);
draw_set_halign(fa_left);

if (letter_array == -1)
    exit;

for (var i = 1; i <= letter_current; i++)
{
    text_x_mod = random_range(-0.5, 0.5);
    text_y_mod = random_range(-0.5, 0.5);
    draw_text_ext(text_x[i] + text_x_mod, text_y[i] + text_y_mod, string_hash_to_newline(letter_array[i]), 20, -1);
}

draw_set_alpha(1);
