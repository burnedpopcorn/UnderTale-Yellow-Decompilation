image_xscale += 0.15;
image_yscale += 0.15;

if (image_xscale > 1.9)
{
    if (image_alpha > 0.25)
        image_alpha -= 0.25;
    else
        instance_destroy();
}
