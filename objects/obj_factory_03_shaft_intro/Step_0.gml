switch (scene)
{
    case 0:
        cutscene_wait(0.5);
        break;
    
    case 1:
        cutscene_sfx_play(383, 1);
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_sfx_play(401, 1);
        break;
    
    case 4:
        cutscene_wait(2);
        break;
    
    case 5:
        cutscene_sfx_play(384, 0.8);
        break;
    
    case 6:
        cutscene_wait(0.3);
        break;
    
    case 7:
        cutscene_sfx_play(263, 0.3);
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        if (draw_alpha > 0)
        {
            draw_alpha -= 0.1;
        }
        else
        {
            draw_alpha = 0;
            scene++;
        }
        
        break;
    
    case 10:
        instance_destroy();
        break;
}
