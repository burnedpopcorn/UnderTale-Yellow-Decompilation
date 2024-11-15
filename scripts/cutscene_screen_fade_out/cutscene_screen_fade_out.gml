function cutscene_screen_fade_out()
{
    if (!instance_exists(obj_screen_fade_effect))
    {
        with (instance_create_depth(0, 0, -100, obj_screen_fade_effect))
        {
            fade_color = argument[0];
            fade_speed = argument[1];
        }
    }
    else if (obj_screen_fade_effect.fade_stage >= 1)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
