if (image_index == 126)
{
    image_speed = 0;
    instance_create(160, 240, obj_logo2);
    image_index = 127;
    alarm[1] = 120;
}

if (destroy == true)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
}
