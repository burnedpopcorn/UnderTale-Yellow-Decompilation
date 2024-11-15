var box;

box = 3154;

if (warning_draw == true)
{
    if (launch_dir == "up" || launch_dir == "down")
    {
        draw_set_color(warning_col);
        draw_rectangle(x - 15, box.bbox_top + 10, x + 15, box.bbox_bottom - 10, false);
        draw_set_color(c_black);
        draw_rectangle(x - 13, box.bbox_top + 12, x + 13, box.bbox_bottom - 12, false);
    }
    else
    {
        draw_set_color(warning_col);
        draw_rectangle(box.bbox_left + 10, y - 15, box.bbox_right - 10, y + 15, false);
        draw_set_color(c_black);
        draw_rectangle(box.bbox_left + 12, y - 13, box.bbox_right - 12, y + 13, false);
    }
}

draw_on_surface();
