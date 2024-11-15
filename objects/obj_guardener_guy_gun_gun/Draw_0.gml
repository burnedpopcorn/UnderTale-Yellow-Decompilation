if (live_call())
    return global.live_result;

if (draw_aim_line == true)
{
    draw_set_color(c_red);
    draw_line_width(x + 2, y - 6, x + 2 + lengthdir_x(300, direction), (y - 6) + lengthdir_y(300, direction), 2);
}

draw_self();
