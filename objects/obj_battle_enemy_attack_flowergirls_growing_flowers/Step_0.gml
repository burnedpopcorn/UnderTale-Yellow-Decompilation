if (image_index >= (image_number - 1))
{
    image_speed = 0;
    image_index = image_number - 1;
}

fade_out_timer--;

if (fade_out_timer <= 0)
{
    image_alpha -= 0.15;
    
    if (image_alpha <= 0)
        instance_destroy();
}
