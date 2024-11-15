function cutscene_event_wildeast_stamp(argument0, argument1, argument2, argument3, argument4)
{
    if (!instance_exists(obj_wild_east_stamp))
    {
        with (instance_create(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, obj_quote_battle_ceroba_outro_4) / 2), obj_wild_east_stamp))
        {
            sprite_index = argument0;
            event_sound = argument1;
            fade_timer = argument2;
            shake_intensity = argument3;
            animation_delay = argument4;
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
