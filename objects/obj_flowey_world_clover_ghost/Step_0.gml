x = xstart + random_range(-0.5, 0.5);
y = ystart + random_range(-0.5, 0.5);
image_alpha = lerp(image_alpha, 0, 0.25);

if (image_alpha < 0.01)
    instance_destroy();
