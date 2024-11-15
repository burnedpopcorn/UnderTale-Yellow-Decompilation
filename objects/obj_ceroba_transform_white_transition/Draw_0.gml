if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_rectangle(-50, -50, 690, 530, false);
draw_circle(x, y, circle_r, false);
draw_set_alpha(1);
