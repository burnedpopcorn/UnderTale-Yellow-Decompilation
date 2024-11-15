if (is_active)
{
    image_speed = 1;
    image_alpha = 1;
    is_active = false;
}

if (image_index >= (image_number - 1))
{
    image_speed = 0;
    image_index = image_number - 1;
}
