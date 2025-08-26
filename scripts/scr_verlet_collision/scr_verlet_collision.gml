function scr_verlet_collision()
{
    for (var i = 0; i < array_length(points); i++)
    {
        var p = points[i];
        
        if (!p[4])
        {
            if (position_meeting(p[0], p[1], argument[0]))
                return true;
        }
    }
}
