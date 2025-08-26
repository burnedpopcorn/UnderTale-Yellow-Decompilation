function scr_screenshake(arg0, arg1)
{
    if (instance_exists(obj_screenshake_player))
        exit;
    
    with (instance_create(__view_get(e__VW.Object, 0).x, __view_get(e__VW.Object, 0).y, obj_screenshake_player))
    {
        alarm[0] = arg0;
        intensity = arg1;
    }
}
