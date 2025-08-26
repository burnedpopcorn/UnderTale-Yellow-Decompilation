function cutscene_event_wildeast_stamp(arg0, arg1, arg2, arg3, arg4)
{
    if (!instance_exists(obj_wild_east_stamp))
    {
        with (instance_create(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, 0) / 2), obj_wild_east_stamp))
        {
            sprite_index = arg0;
            event_sound = arg1;
            fade_timer = arg2;
            shake_intensity = arg3;
            animation_delay = arg4;
        }
    }
    else if (obj_wild_east_stamp.image_alpha <= 0)
    {
        cutscene_advance();
        instance_destroy(obj_wild_east_stamp);
        return true;
    }
    
    return false;
}
