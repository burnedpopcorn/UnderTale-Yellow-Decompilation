if (live_call())
    return global.live_result;

if (image_alpha < 1)
    image_alpha += 0.1;

if (attack_delay > 0)
{
    attack_delay--;
    exit;
}

image_xscale -= 0.5;
image_yscale -= 0.5;

if (image_xscale <= 0 || image_yscale <= 0)
{
    instance_destroy();
    exit;
}
