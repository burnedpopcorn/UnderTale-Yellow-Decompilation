if (live_call())
    return global.live_result;

draw_set_color(c_red);
draw_set_alpha(draw_alpha);
draw_rectangle(x, y, x + 19, y + 19, false);
draw_set_alpha(1);
