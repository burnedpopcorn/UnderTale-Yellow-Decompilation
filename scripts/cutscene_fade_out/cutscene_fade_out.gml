function cutscene_fade_out(argument0, argument1)
{
    var fade_speed;
    
    if (!instance_exists(argument0))
        exit;
    
    fade_speed = clamp(argument1, 0.1, 10);
    
    if (argument0.image_alpha > 0)
    {
        argument0.image_alpha -= argument1 / 10;
    }
    else
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
