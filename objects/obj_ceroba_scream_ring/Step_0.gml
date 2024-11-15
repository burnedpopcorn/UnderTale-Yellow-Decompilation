if (live_call())
    return global.live_result;

image_xscale += 0.8;
image_yscale += 0.8;

if (image_xscale > 15)
{
    if (image_alpha > 0)
        image_alpha -= 0.33;
    else
        instance_destroy();
}
