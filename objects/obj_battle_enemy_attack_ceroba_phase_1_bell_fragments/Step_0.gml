if (fade_out == true)
{
    if (image_alpha > 0)
        image_alpha -= 0.33;
    else
        instance_destroy();
}
