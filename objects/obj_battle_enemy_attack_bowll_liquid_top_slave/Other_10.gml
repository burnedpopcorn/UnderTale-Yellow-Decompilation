if (image_alpha < 1)
{
    image_alpha += fade_in_speed;
    
    if (image_alpha > 1)
        image_alpha = 1;
}
