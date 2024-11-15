if (live_call())
    return global.live_result;

switch (direction)
{
    case 0:
        image_index = 4;
        break;
    
    case 45:
        image_index = 5;
        break;
    
    case 135:
        image_index = 0;
        break;
    
    case 180:
        image_index = 1;
        break;
    
    case 225:
        image_index = 2;
        break;
    
    case 315:
        image_index = 3;
        break;
}

image_alpha = 1;
image_xscale = lerp(image_xscale, 1, 0.25);

if (image_xscale > 0.99)
    image_xscale = 1;

image_yscale = image_xscale;
