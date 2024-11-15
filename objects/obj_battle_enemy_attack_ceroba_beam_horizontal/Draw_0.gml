var x_original, x_max;

draw_set_color(attack_beam_draw_color);
x_original = 0;
x_max = room_width;
draw_rectangle(x_original, y - (attack_beam_width_current / 2), x_max, y + (attack_beam_width_current / 2), false);
draw_rectangle(x_original, y - (attack_beam_width_current / 2), x_max, y + (attack_beam_width_current / 2), true);
