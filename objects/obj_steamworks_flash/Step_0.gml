var flash_speed;

flash_speed = 0.00125;

if (alpha_trend == 1)
{
    if (draw_alpha < 0.15)
        draw_alpha += flash_speed;
    else
        alpha_trend = -1;
}

if (alpha_trend == -1)
{
    if (draw_alpha > 0)
        draw_alpha -= flash_speed;
    else
        alpha_trend = 1;
}
