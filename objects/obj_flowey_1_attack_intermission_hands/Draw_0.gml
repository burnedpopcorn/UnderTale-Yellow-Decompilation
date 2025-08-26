if (live_call())
    return global.live_result;

draw_set_color(c_white);
var yy = y;
draw_rectangle(0, yy, 640, yy + 480, false);
