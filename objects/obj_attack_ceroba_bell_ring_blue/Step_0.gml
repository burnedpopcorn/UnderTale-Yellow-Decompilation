if (live_call())
    return global.live_result;

if (attack_delay > 0)
{
    attack_delay--;
    exit;
}

image_xscale += 0.25;
image_yscale += 0.25;
attack_delay = 0;

if (image_xscale > 9)
{
    if (image_alpha > 0)
        image_alpha -= 0.33;
    else
        instance_destroy();
}
