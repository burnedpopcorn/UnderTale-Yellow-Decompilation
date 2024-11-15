y -= 1;

if (x_spd < 6)
    x_spd += 0.01;

if (x_dir == 1)
{
    x += x_spd;
    
    if (round(x) >= x_max)
    {
        x_dir *= -1;
        x_spd = 0.1;
    }
}
else if (x_dir == -1)
{
    x -= x_spd;
    
    if (round(x) <= x_min)
    {
        x_dir *= -1;
        x_spd = 0.1;
    }
}

if (y < (ystart - 20))
{
    draw_alpha -= 0.025;
    
    if (draw_alpha <= 0)
        instance_destroy();
}
