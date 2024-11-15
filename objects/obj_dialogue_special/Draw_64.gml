var i;

if (live_call())
    return global.live_result;

if (!can_draw)
    exit;

draw_set_font(fnt_main);
draw_set_color(text_col);
draw_set_halign(fa_left);
scr_draw_dialogue_box(4.421875, 1.09375, 0.1);

if (letter_array == -1)
    exit;

for (i = 1; i <= letter_current; i++)
{
    if (mode == "shake")
    {
        text_x_mod = random_range(-0.5, 0.5);
        text_y_mod = random_range(-0.5, 0.5);
    }
    else if (mode == "swirl")
    {
        text_x_mod = lengthdir_x(1, swirl_deg - (15 * i));
        text_y_mod = lengthdir_y(1, swirl_deg - (15 * i));
    }
    
    draw_text_ext(text_x[i] + text_x_mod, text_y[i] + text_y_mod, string_hash_to_newline(letter_array[i]), 20, -1);
}
