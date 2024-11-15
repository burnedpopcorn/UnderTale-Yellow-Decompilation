switch (scene)
{
    case 0:
        if (transition_alpha < 1)
            transition_alpha += 0.15;
        else
            scene++;
        
        break;
    
    case 1:
        room = rm_steamworks_04_transition_c;
        obj_pl.image_alpha = 0;
        scene++;
        break;
    
    case 2:
        if (transition_alpha > 0)
            transition_alpha -= 0.1;
        else
            scene++;
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        if (!audio_is_playing(snd_puzzle_woodmove))
            audio_play_sound(snd_puzzle_woodmove, 1, 0);
        
        if (tile_move_distance > 0)
        {
            tile_layer_shift(1000001, 1, 0);
            tile_move_distance -= 1;
        }
        else
        {
            cutscene_advance();
        }
        
        break;
    
    case 5:
        cutscene_sfx_play(293, 1);
        break;
    
    case 6:
        cutscene_screenshake(0.5, 2);
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        if (transition_alpha < 1)
            transition_alpha += 0.15;
        else
            scene++;
        
        break;
    
    case 9:
        global.sworks_flag[1] = 1;
        room = rm_steamworks_04b;
        obj_pl.image_alpha = 1;
        cutscene_advance();
        break;
    
    case 10:
        if (transition_alpha > 0)
            transition_alpha -= 0.1;
        else
            scene++;
        
        break;
    
    case 11:
        scr_cutscene_end();
        instance_destroy();
        break;
}
