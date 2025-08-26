var fade_inc = 0.2;
image_alpha -= fade_inc;

if (image_alpha >= 1)
{
    instance_destroy();
    exit;
}

alarm[1] = 0.05 * room_speed;
