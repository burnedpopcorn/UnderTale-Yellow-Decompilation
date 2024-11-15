if (execute_create == true)
{
    for (i = 0; i <= final_circle; i++)
    {
        if (imagea[i] > 0)
        {
            draw_set_alpha(imagea[i]);
            scr_circle_outline(x, y, outline[i] - 1, 8 + thickness[i], outline_color[i]);
            
            if (hit[i] == 0)
                scr_circle_outline(x, y, outline[i], 4 + thickness[i], cursor_color[i]);
        }
    }
    
    draw_set_alpha(1);
}
