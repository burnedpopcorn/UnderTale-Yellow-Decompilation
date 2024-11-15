event_inherited();

if (hp_self <= 0)
{
    gravity = 1;
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
    
    image_angle += 15;
}

size = (sin(current_time / 400) * 0.05) + 1.05;
image_xscale = size;
image_yscale = size;
