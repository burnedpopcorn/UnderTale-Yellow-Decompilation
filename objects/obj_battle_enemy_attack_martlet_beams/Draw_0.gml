var y_original, y_max, x_original, x_max;

if (live_call())
    return global.live_result;

y_original = 0;
y_max = room_height;
x_original = 0;
x_max = room_width;
draw_set_color(attack_beam_draw_color);
draw_rectangle(x - (attack_beam_width_current / 2), y_original, x + (attack_beam_width_current / 2), y_max, false);
draw_rectangle(x - (attack_beam_width_current / 2), y_original, x + (attack_beam_width_current / 2), y_max, true);
draw_rectangle(x_original, y - (attack_beam_width_current / 2), x_max, y + (attack_beam_width_current / 2), false);
draw_rectangle(x_original, y - (attack_beam_width_current / 2), x_max, y + (attack_beam_width_current / 2), true);
