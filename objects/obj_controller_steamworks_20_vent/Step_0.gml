switch (scene)
{
    case 1:
        cutscene_sfx_play(snd_footstep1, 1);
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_sfx_play(snd_footstep2, 1);
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        footstep_counter -= 1;
        
        if (footstep_counter <= 0)
            cutscene_advance();
        else
            cutscene_advance(1);
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_sfx_play(snd_steamworks_13_vent, 1);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_advance();
        break;
    
    case 10:
        if (draw_alpha > 0)
            draw_alpha -= 0.05;
        else
            cutscene_advance();
        
        break;
    
    case 11:
        scr_radio_restart();
        cutscene_end();
        break;
}
