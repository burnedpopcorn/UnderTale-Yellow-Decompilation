function on_animation_end()
{
    if (image_index >= (image_number - image_speed))
        return true;
    else
        return false;
}
