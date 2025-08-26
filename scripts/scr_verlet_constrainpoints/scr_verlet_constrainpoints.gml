function scr_verlet_constrainpoints(arg0, arg1, arg2)
{
    for (var i = 0; i < array_length(arg0); i++)
    {
        var p = arg0[i];
        
        if (!p[4])
        {
            var vx = (p[0] - p[2]) * arg1;
            var vy = (p[1] - p[3]) * arg1;
            
            if (p[0] > room_width)
            {
                p[0] = room_width;
                p[2] = p[0] + (vx * arg2);
            }
            else if (p[0] < 0)
            {
                p[0] = 0;
                p[2] = p[0] + (vx * arg2);
            }
            
            if (p[1] > room_height)
            {
                p[1] = room_height;
                p[3] = p[1] + (vy * arg2);
            }
            else if (p[1] < 0)
            {
                p[1] = 0;
                p[3] = p[1] + (vy * arg2);
            }
        }
    }
}
