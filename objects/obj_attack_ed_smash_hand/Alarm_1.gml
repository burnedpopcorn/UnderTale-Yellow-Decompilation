var fade_inc = 0.35;
image_alpha -= fade_inc;
image_index = image_number - 1;

if (image_alpha <= 0.35)
{
    instance_destroy();
    exit;
}

alarm[1] = 0.05 * room_speed;
