function scr_verlet_guardener_wind(arg0)
{
    for (var i = 0; i < array_length(arg0); i++)
    {
        var p = array_get(arg0, i);
        
        if (!array_get(p, 4))
        {
            if (position_meeting(array_get(p, 0), array_get(p, 1), obj_guardener_verlet_wind))
                array_set(p, 0, array_get(p, 0) - 0.025);
        }
    }
}
