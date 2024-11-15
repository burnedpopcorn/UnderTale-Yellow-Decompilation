if (fade_out == true)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.05;
    else
        instance_destroy();
}
