if (effects == true)
{
    if (y > cave_y_end)
    {
        y -= (y_increase * 2);
        
        if (y < cave_y_end)
            y = cave_y_end;
    }
}
