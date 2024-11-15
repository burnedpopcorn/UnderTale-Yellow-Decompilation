if (fade_in)
{
    if (image_alpha < 1)
        image_alpha += 0.25;
    else
        fade_in = false;
}
else if (image_alpha > 0)
{
    image_alpha -= 0.15;
}
else
{
    instance_destroy();
}
