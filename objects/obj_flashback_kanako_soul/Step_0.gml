if (!fade_out)
{
    if (image_alpha < 1)
        image_alpha += 0.1;
}
else if (image_alpha > 0)
{
    image_alpha -= 0.1;
}
else
{
    instance_destroy();
}
