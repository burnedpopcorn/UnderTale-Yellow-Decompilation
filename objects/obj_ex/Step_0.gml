if (image_index == 7)
{
    image_speed = 0;
    image_index = 8;
}

if (instance_exists(obj_transition))
    instance_destroy();
