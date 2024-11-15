function collision_line_first(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var ox, oy, dx, dy, object, prec, notme, sx, sy, inst, i;
    
    ox = argument0;
    oy = argument1;
    dx = argument2;
    dy = argument3;
    object = argument4;
    prec = argument5;
    notme = argument6;
    sx = dx - ox;
    sy = dy - oy;
    inst = collision_line(ox, oy, dx, dy, object, prec, notme);
    
    if (inst != -4)
    {
        while (abs(sx) >= 1 || abs(sy) >= 1)
        {
            sx /= 2;
            sy /= 2;
            i = collision_line(ox, oy, dx, dy, object, prec, notme);
            
            if (i)
            {
                dx -= sx;
                dy -= sy;
                inst = i;
            }
            else
            {
                dx += sx;
                dy += sy;
            }
        }
    }
    
    return inst;
}
