if (live_call())
    return global.live_result;

switch (scene)
{
    case 1:
        if (alpha < 1)
            alpha += 0.2;
        else
            scene++;
        
        break;
    
    case 2:
        if (alpha > 0)
            alpha -= 0.2;
        else
            scene++;
        
        break;
}
