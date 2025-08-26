function collision_line_first(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var ox = arg0;
    var oy = arg1;
    var dx = arg2;
    var dy = arg3;
    var object = arg4;
    var prec = arg5;
    var notme = arg6;
    var sx = dx - ox;
    var sy = dy - oy;
    var inst = collision_line(ox, oy, dx, dy, object, prec, notme);
    
    if (inst != -4)
    {
        while (abs(sx) >= 1 || abs(sy) >= 1)
        {
            sx /= 2;
            sy /= 2;
            var i = collision_line(ox, oy, dx, dy, object, prec, notme);
            
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
