if (fade_out)
{
    image_alpha = lerp(image_alpha, 0, 0.2);
    
    if (image_alpha < 0.1)
    {
        instance_destroy();
        exit;
    }
    
    exit;
}

image_alpha = lerp(image_alpha, image_alpha_max, 0.18);

if (image_alpha > (image_alpha_max - 0.01))
    image_alpha = image_alpha_max;
