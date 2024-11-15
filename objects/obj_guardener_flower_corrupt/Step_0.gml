if (image_index >= (image_number - 1))
{
    if (sprite_index == spr_guardener_plant_grows)
    {
        image_index = image_number - 1;
        image_speed = 0;
    }
    else
    {
        instance_destroy();
    }
}
