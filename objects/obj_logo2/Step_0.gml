if (image_index == 28)
{
    image_speed = 0;
    image_index = 29;
    alarm[1] = 120;
}

if (destroy == true)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
}
