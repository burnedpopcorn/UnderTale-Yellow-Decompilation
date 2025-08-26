if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
draw_set_color(message_color);
draw_set_halign(fa_left);

if (letter_array == -1)
    exit;

for (var i = 1; i <= letter_current; i++)
{
    text_x_mod = 0;
    text_y_mod = 0;
    
    if (shake_intensity > 0)
    {
        text_x_mod = random_range(-shake_intensity, shake_intensity);
        text_y_mod = random_range(-shake_intensity, shake_intensity);
    }
    
    draw_set_alpha(draw_alpha * text_alpha[i]);
    draw_text_ext(camera_get_view_x(view_camera[0]) + text_x[i] + text_x_mod, camera_get_view_y(view_camera[0]) + text_y[i] + text_y_mod, string_hash_to_newline(letter_array[i]), 20, -1);
}

draw_set_alpha(1);
