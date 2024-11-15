if (live_call())
    return global.live_result;

if (fade_out)
{
    if (image_alpha > 0)
        image_alpha -= 0.08;
    else
        instance_destroy();
}
