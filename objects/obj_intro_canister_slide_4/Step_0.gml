if (effects_2 == true)
{
    if (image_alpha < 1)
    {
        image_alpha += image_alpha_speed;
        
        if (image_alpha > 1)
            image_alpha = 1;
    }
}
