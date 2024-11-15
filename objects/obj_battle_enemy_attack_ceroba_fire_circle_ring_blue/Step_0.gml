image_xscale += 0.2;
image_yscale += 0.2;

if (image_xscale > 6)
{
    if (image_alpha > 0)
        image_alpha -= 0.15;
    else
        instance_destroy();
}
