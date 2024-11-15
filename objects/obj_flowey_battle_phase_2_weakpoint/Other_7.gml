if (image_speed == -1)
{
    image_index = 0;
    image_speed = 0;
    x = -90;
    y = 0;
}
else
{
    image_index = image_number - 1;
    image_speed = 0;
    alarm[1] = 3 * room_speed;
}
