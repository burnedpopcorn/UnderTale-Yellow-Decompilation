if (effects_1 == true)
{
    if (image_alpha > 0)
    {
        image_alpha -= image_alpha_speed;
        
        if (image_alpha < 0)
            image_alpha = 0;
    }
}
