function scr_verlet_updatesticks(arg0)
{
    for (var i = 0; i < array_length(arg0); i++)
    {
        var s = array_get(arg0, i);
        var dx = array_get(array_get(s, 1), 0) - array_get(array_get(s, 0), 0);
        var dy = array_get(array_get(s, 1), 1) - array_get(array_get(s, 0), 1);
        var distance = sqrt((dx * dx) + (dy * dy));
        var difference = array_get(s, 2) - distance;
        var percent = difference / distance / 2;
        var offsetX = dx * percent;
        var offsetY = dy * percent;
        
        if (!array_get(array_get(s, 0), 4))
        {
            array_set(array_get(s, 0), 0, array_get(array_get(s, 0), 0) - offsetX);
            array_set(array_get(s, 0), 1, array_get(array_get(s, 0), 1) - offsetY);
        }
        
        if (!array_get(array_get(s, 1), 4))
        {
            array_set(array_get(s, 1), 0, array_get(array_get(s, 1), 0) + offsetX);
            array_set(array_get(s, 1), 1, array_get(array_get(s, 1), 1) + offsetY);
        }
    }
}
