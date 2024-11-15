var box;

draw_on_surface();
box = 3154;

if (warning_draw == true)
{
    if (launch_dir == "up")
    {
        draw_set_color(warning_col);
        draw_rectangle(x - 32, 320, x + 32, box.bbox_bottom - 10, false);
        draw_set_color(c_black);
        draw_rectangle(x - 30, 322, x + 30, box.bbox_bottom - 12, false);
    }
    else if (launch_dir == "down")
    {
        draw_set_color(warning_col);
        draw_rectangle(x - 32, 320, x + 32, box.bbox_top + 10, false);
        draw_set_color(c_black);
        draw_rectangle(x - 30, 318, x + 30, box.bbox_top + 12, false);
    }
    else if (launch_dir == "left")
    {
        draw_rectangle(box.bbox_left + 10, y + 32, 320, y - 32, true);
    }
    else if (launch_dir == "right")
    {
        draw_rectangle(box.bbox_right - 10, y + 32, 320, y - 32, true);
    }
}
