function scr_verlet_constrainpoints(argument0, argument1, argument2)
{
    var i, p, vx, vy;
    
    for (i = 0; i < array_length(argument0); i++)
    {
        p = argument0[i];
        
        if (!p[4])
        {
            vx = (p[0] - p[2]) * argument1;
            vy = (p[1] - p[3]) * argument1;
            
            if (p[0] > room_width)
            {
                p[0] = room_width;
                p[2] = p[0] + (vx * argument2);
            }
            else if (p[0] < 0)
            {
                p[0] = 0;
                p[2] = p[0] + (vx * argument2);
            }
            
            if (p[1] > room_height)
            {
                p[1] = room_height;
                p[3] = p[1] + (vy * argument2);
            }
            else if (p[1] < 0)
            {
                p[1] = 0;
                p[3] = p[1] + (vy * argument2);
            }
        }
    }
}
