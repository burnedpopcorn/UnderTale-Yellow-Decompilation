function cutscene_fade_in(arg0, arg1)
{
    if (!instance_exists(arg0))
        exit;
    
    var fade_speed = clamp(arg1, 0.1, 10);
    
    if (arg0.image_alpha < 1)
    {
        arg0.image_alpha += arg1 / 10;
    }
    else
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
