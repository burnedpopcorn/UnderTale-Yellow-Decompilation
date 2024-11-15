function scr_circle_outline(argument0, argument1, argument2, argument3, argument4)
{
    var i;
    
    pos_x = argument0;
    pos_y = argument1;
    min_rad = argument2;
    max_thickness = argument3;
    circ_color = argument4;
    draw_set_colour(circ_color);
    
    for (i = 0; i <= max_thickness; i++)
        draw_circle(pos_x, pos_y, min_rad + (i * 0.25), true);
}
