var roll_speed;

image_alpha += 0.025;

if (image_alpha < 1)
    exit;

roll_speed = 2.5;
image_speed = 0.4;

if ((y < 160 && y > 80) || y > 240)
{
    roll_speed = 4.5;
    image_index = 0;
    image_speed = 0;
    
    if (y > 380)
        image_alpha -= 0.1;
}

if (y > 240)
    depth = 10000;

y += roll_speed;

if (y >= room_height)
    instance_destroy();
