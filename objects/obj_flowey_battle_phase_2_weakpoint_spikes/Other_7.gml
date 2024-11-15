if (image_speed == -1)
{
    instance_destroy();
}
else
{
    image_index = image_number - 1;
    image_speed = 0;
    alarm[0] = 3 * room_speed;
}
