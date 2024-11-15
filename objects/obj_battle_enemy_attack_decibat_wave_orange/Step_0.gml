if (image_alpha < 1 && fade == false)
{
    image_alpha += 0.2;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

image_xscale += image_xscale_increase;
image_yscale += image_yscale_increase;
x += x_speed;

if (image_alpha > 0 && fade == true)
{
    image_alpha -= 0.2;
    
    if (image_alpha < 0)
        image_alpha = 0;
    
    if (image_alpha == 0)
        instance_destroy();
}
