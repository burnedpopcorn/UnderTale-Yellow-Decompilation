var fade_inc;

fade_inc = 0.2;
image_alpha += fade_inc;

if (image_alpha >= 1)
{
    image_speed = 1/3;
    exit;
}

alarm[0] = 0.05 * room_speed;
