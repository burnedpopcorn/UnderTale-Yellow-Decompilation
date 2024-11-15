var yy_left, yy_right;

if (live_call())
    return global.live_result;

yy_left = 0;
yy_right = 0;

if (image_index >= 5 && image_index < 11)
    yy_right -= 10;
else if (image_index >= 16 && image_index < 22)
    yy_left -= 10;

draw_rectangle_color(x - 31, y + yy_left, x - 30, 480 + yy_left, c_white, c_white, c_black, c_black, false);
draw_rectangle_color(x + 30, y + yy_right, x + 31, 480 + yy_right, c_white, c_white, c_black, c_black, false);
draw_self();
