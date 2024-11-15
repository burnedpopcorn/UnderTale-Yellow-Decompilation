function scr_verlet_updatesticks(argument0)
{
    var i, s, dx, dy, distance, difference, percent, offsetX, offsetY;
    
    for (i = 0; i < array_length(argument0); i++)
    {
        s = array_get(argument0, i);
        dx = array_get(array_get(s, 1), 0) - array_get(array_get(s, 0), 0);
        dy = array_get(array_get(s, 1), 1) - array_get(array_get(s, 0), 1);
        distance = sqrt((dx * dx) + (dy * dy));
        difference = array_get(s, 2) - distance;
        percent = difference / distance / 2;
        offsetX = dx * percent;
        offsetY = dy * percent;
        
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
