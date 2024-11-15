if (image_index == 7)
{
    image_speed = 0;
    image_index = 8;
}

if (image_index == 13)
{
    image_speed = 0;
    image_index = 14;
}

if (obj_rndenc.draw == true)
{
    image_index = 9;
    image_speed = 0.5;
}

if (obj_rndenc.draw == false)
    instance_destroy();
