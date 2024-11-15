if (fade_out == true)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
