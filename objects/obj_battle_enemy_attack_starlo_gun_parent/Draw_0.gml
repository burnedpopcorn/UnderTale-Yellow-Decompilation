if (can_fire == -1)
{
    draw_set_color(c_white);
    draw_set_alpha(0.5);
    
    for (var i = line_segments; i > 0; i--)
        draw_line_width(x_start[i], y_start[i], x_start[i] + x_target, y_start[i] + y_target, 3);
    
    draw_set_alpha(1);
}

draw_self();
