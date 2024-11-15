image_alpha_current -= 0.1;
image_alpha = image_alpha_current;

if (image_alpha_current < 0)
    instance_destroy();
