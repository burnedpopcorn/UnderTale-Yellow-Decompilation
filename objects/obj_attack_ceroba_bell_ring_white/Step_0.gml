if (live_call())
    return global.live_result;

if (attack_delay > 0)
{
    attack_delay--;
    exit;
}

image_scale_inc += 0.01;
image_xscale += image_scale_inc;
image_yscale += image_scale_inc;
attack_delay = 0;

if (image_xscale > 15)
{
    if (image_alpha > 0)
        image_alpha -= 0.15;
    else
        instance_destroy();
}
