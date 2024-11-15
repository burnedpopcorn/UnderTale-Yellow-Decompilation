if (live_call())
    return global.live_result;

if (image_alpha < 1)
    image_alpha += 0.2;

switch (scene)
{
    case 0:
        y = lerp(y, 330, 0.05);
        break;
}

image_xscale = lerp(image_xscale, 1, 0.15);
image_yscale = image_xscale;
