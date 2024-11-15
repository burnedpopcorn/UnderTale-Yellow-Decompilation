if (fade_out == false)
{
    image_alpha = lerp(image_alpha, 1, 0.1);
    
    if (image_alpha >= 0.99 && no_loop == false)
    {
        image_alpha = 1;
        alarm[0] = 10;
        no_loop = true;
    }
}
else
{
    image_alpha = lerp(image_alpha, 0, 0.15);
    
    if (image_alpha <= 0.05 && no_loop == false)
    {
        image_alpha = 0;
        instance_destroy();
    }
}
