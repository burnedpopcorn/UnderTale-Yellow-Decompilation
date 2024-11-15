if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (image_alpha < 1)
            image_alpha += 0.2;
        else
            scene++;
        
        break;
    
    case 1:
        gravity = 0.3;
        break;
}
