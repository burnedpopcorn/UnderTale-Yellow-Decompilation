switch (scene)
{
    case 0:
        cutscene_wait(0.5);
        break;
    
    case 1:
        cutscene_sfx_play(376, 1);
        break;
    
    case 2:
        tile_layer_hide(1000001);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(0.3);
        break;
    
    case 4:
        tile_layer_show(1000001);
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(0.3);
        break;
    
    case 6:
        cutscene_sfx_play(376, 1);
        break;
    
    case 7:
        tile_layer_hide(1000001);
        cutscene_advance();
        break;
    
    case 8:
        cutscene_wait(0.3);
        break;
    
    case 9:
        tile_layer_show(1000001);
        cutscene_advance();
        break;
    
    case 10:
        cutscene_wait(0.6);
        break;
    
    case 11:
        cutscene_sfx_play(384, 1);
        break;
    
    case 12:
        tile_layer_hide(1000001);
        cutscene_advance();
        break;
    
    case 13:
        cutscene_screenshake(1, 2);
        break;
    
    case 14:
        cutscene_wait(0.5);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* The generator has started#  working.";
        
        break;
    
    case 16:
        scr_cutscene_end();
        global.sworks_flag[0] = 4;
        instance_destroy();
        break;
}
