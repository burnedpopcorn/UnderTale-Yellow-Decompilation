image_alpha -= 0.1;
image_angle += 10;

if (image_alpha < 0)
    instance_destroy();
