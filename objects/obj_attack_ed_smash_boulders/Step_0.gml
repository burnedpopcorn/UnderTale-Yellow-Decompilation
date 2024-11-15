if (image_alpha < 1)
    image_alpha += 0.2;

if (vspeed > 13)
    vspeed = 13;

if (y >= room_height)
    instance_destroy();
