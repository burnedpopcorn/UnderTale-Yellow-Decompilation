if (live_call())
    return global.live_result;

image_alpha = 1;
image_xscale = sign(hspeed);

switch (scene)
{
    case 0:
        image_yscale = lerp(image_yscale, 3.1, 0.25);
        
        if (image_yscale >= 3)
            scene++;
        
        break;
    
    case 1:
        image_yscale = lerp(image_yscale, 1, 0.25);
        break;
}
