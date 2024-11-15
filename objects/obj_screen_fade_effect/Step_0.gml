switch (fade_stage)
{
    case 0:
        if (fade_alpha < 1)
            fade_alpha += fade_speed;
        else
            fade_stage += 1;
        
        break;
    
    case 1:
        break;
    
    case 2:
        if (fade_alpha > 0)
            fade_alpha -= fade_speed;
        else
            fade_stage = 3;
        
        break;
    
    case 3:
        instance_destroy();
        break;
}
