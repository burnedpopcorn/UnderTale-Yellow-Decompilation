var fade_inc;

fade_inc = 0.35;
image_alpha += fade_inc;

if (image_alpha >= 1)
{
    image_speed = 0.5;
    exit;
}

alarm[0] = 0.05 * room_speed;
