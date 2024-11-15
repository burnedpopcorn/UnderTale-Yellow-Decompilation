if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
