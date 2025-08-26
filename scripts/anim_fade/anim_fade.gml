function anim_fade(arg0)
{
    aspd = arg0;
    
    if (image_alpha < 1)
        image_alpha += aspd;
}
