function cutscene_fade_in(argument0, argument1)
{
    var fade_speed;
    
    if (!instance_exists(argument0))
        exit;
    
    fade_speed = clamp(argument1, 0.1, 10);
    
    if (argument0.image_alpha < 1)
    {
        argument0.image_alpha += argument1 / 10;
    }
    else
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
