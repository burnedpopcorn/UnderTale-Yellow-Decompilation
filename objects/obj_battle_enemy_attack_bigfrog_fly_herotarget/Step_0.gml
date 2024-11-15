if (live_call())
    return global.live_result;

image_angle = 180 - (180 * image_xscale);

switch (state)
{
    case 0:
        image_xscale = lerp(image_xscale, 1.2, 0.35);
        image_yscale = image_xscale;
        
        if (image_xscale >= 1.19)
            state++;
        
        break;
    
    case 1:
        image_xscale = lerp(image_xscale, 1, 0.35);
        
        if (image_xscale <= 1.01)
        {
            image_xscale = 1;
            state++;
        }
        
        image_yscale = image_xscale;
        break;
    
    case 2:
        if (!alarm[0])
            alarm[0] = 5;
        
        break;
}
