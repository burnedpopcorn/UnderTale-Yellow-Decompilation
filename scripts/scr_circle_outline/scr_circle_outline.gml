function scr_circle_outline(arg0, arg1, arg2, arg3, arg4)
{
    pos_x = arg0;
    pos_y = arg1;
    min_rad = arg2;
    max_thickness = arg3;
    circ_color = arg4;
    draw_set_colour(circ_color);
    
    for (var i = 0; i <= max_thickness; i++)
        draw_circle(pos_x, pos_y, min_rad + (i * 0.25), true);
}
