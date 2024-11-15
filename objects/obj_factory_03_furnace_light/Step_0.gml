if (destroy_self == true)
{
    if (image_speed == 0)
        image_speed -= 1;
    
    if (image_index <= 0)
        instance_destroy();
}
