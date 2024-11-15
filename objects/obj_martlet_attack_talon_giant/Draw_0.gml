var line_col, xx_1, xx_2, xx_3;

if (live_call())
    return global.live_result;

if (y > ystart)
{
    line_col = make_color_rgb(210, 210, 210);
    draw_set_color(line_col);
    xx_1 = battle_box.bbox_left + 4 + 50;
    xx_2 = battle_box.bbox_left + 4 + 100;
    xx_3 = battle_box.bbox_left + 4 + 150;
    draw_rectangle(xx_1 - 1, ystart + 25, xx_1 + 1, y + 25, false);
    draw_rectangle_color(xx_1 - 1, ystart + 25, xx_1 + 1, clamp(y + 25, y + 25, ystart + 30), c_black, c_black, line_col, line_col, false);
    draw_rectangle_color(xx_1 - 1, y + 15, xx_1 + 1, y + 25, line_col, line_col, c_black, c_black, false);
    draw_rectangle(xx_2 - 1, ystart, xx_2 + 1, y, false);
    draw_rectangle_color(xx_2 - 1, ystart, xx_2 + 1, clamp(y, y, ystart + 30), c_black, c_black, line_col, line_col, false);
    draw_rectangle_color(xx_2 - 1, y - 10, xx_2 + 1, y, line_col, line_col, c_black, c_black, false);
    draw_rectangle(xx_3 - 1, ystart + 34, xx_3 + 1, y + 34, false);
    draw_rectangle_color(xx_3 - 1, ystart + 34, xx_3 + 1, clamp(y + 34, y + 34, ystart + 30), c_black, c_black, line_col, line_col, false);
    draw_rectangle_color(xx_3 - 1, y + 24, xx_3 + 1, y + 34, line_col, line_col, c_black, c_black, false);
}

draw_self();
