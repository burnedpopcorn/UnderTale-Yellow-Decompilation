image_angle += (20 * angle);
image_alpha -= 0.1;

if (image_alpha <= 0)
    instance_destroy();
