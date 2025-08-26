function scr_verlet_updatepoints(arg0, arg1, arg2)
{
    for (var i = 0; i < array_length(arg0); i++)
    {
        var p = array_get(arg0, i);
        
        if (!array_get(p, 4))
        {
            var vx = (array_get(p, 0) - array_get(p, 2)) * arg1;
            var vy = (array_get(p, 1) - array_get(p, 3)) * arg1;
            array_set(p, 2, array_get(p, 0));
            array_set(p, 3, array_get(p, 1));
            array_set(p, 0, array_get(p, 0) + vx);
            array_set(p, 1, array_get(p, 1) + vy);
            array_set(p, 1, array_get(p, 1) + arg2);
        }
    }
}
