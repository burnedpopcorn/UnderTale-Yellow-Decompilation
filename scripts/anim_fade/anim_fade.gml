function anim_fade(argument0)
{
    aspd = argument0;
    
    if (image_alpha < 1)
        image_alpha += aspd;
}
