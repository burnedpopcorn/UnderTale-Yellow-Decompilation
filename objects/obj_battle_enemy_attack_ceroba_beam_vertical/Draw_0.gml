var y_original = 0;
var y_max = room_height;
draw_set_color(attack_beam_draw_color);
draw_rectangle(x - (attack_beam_width_current / 2), y_original, x + (attack_beam_width_current / 2), y_max, false);
draw_rectangle(x - (attack_beam_width_current / 2), y_original, x + (attack_beam_width_current / 2), y_max, true);
