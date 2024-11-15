image_xscale += 0.12;
image_yscale += 0.12;

if (image_xscale > 1.5)
{
    if (image_alpha > 0.25)
        image_alpha -= 0.25;
    else
        instance_destroy();
}
