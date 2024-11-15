if (image_alpha < 1)
    image_alpha += 0.2;

if (vspeed > 12)
    vspeed = 12;

if (y >= room_height)
    instance_destroy();
