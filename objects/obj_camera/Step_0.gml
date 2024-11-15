if (move == true)
{
    if (axis_priority == "y")
    {
        if (y != yy)
        {
            if (abs(yy - y) < spd)
                spd = abs(yy - y);
            
            y += (sign(yy - y) * spd);
        }
        else if (xx != x)
        {
            if (abs(xx - x) < spd)
                spd = abs(xx - x);
            
            x += (sign(xx - x) * spd);
        }
        else
        {
        }
    }
    else if (axis_priority == "x")
    {
        if (xx != x)
        {
            if (abs(xx - x) < spd)
                spd = abs(xx - x);
            
            x += (sign(xx - x) * spd);
        }
        else if (yy != y)
        {
            if (abs(yy - y) < spd)
                spd = abs(yy - y);
            
            y += (sign(yy - y) * spd);
        }
        else
        {
        }
    }
}
