if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
draw_set_color(c_yellow);
draw_set_halign(fa_left);

if (letter_array == -1)
    exit;

for (var i = 1; i <= letter_current; i++)
{
    text_x_mod = random_range(-0.25, 0.25);
    text_y_mod = random_range(-0.25, 0.25);
    var text_x_final = text_x[i] + text_x_mod;
    var text_y_final = text_y[i] + text_y_mod;
    draw_set_alpha(draw_alpha * text_alpha[i]);
    draw_set_color(c_black);
    draw_text_ext(text_x_final + 1, text_y_final, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final + 1, text_y_final + 1, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final, text_y_final + 1, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final - 1, text_y_final + 1, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final - 1, text_y_final, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final - 1, text_y_final - 1, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final, text_y_final - 1, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_text_ext(text_x_final + 1, text_y_final - 1, string_hash_to_newline(letter_array[i]), 20, -1);
    draw_set_color(c_yellow);
    draw_text_ext(text_x_final, text_y_final, string_hash_to_newline(letter_array[i]), 20, -1);
}

draw_set_alpha(1);
