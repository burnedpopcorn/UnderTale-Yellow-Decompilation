if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (draw_alpha < 1)
            draw_alpha += 0.12;
        
        break;
    
    case 1:
        if (draw_alpha > 0)
            draw_alpha -= 0.2;
        else
            instance_destroy();
        
        break;
}
