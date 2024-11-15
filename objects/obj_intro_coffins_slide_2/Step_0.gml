if (effects == true)
{
    if (x > x_max)
    {
        x -= x_increase_rate;
        
        if (x < x_max)
            x = x_max;
    }
}
