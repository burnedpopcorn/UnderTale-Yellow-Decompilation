image_xscale += 0.1;
image_yscale += 0.1;

if (image_xscale > 1.5)
{
    if (image_alpha > 0)
        image_alpha -= 0.15;
    else
        instance_destroy();
}
