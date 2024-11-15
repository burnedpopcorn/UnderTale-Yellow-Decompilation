switch (scene)
{
    case 0:
        if (obj_pl.x >= 720)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            instance_destroy(obj_doorway);
            scr_cutscene_start();
            scr_audio_fade_out(obj_radio.current_song, 1000);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1168, 840, obj_player_npc.y, 3, "x", "right");
        scene++;
        break;
    
    case 2:
        cutscene_sfx_play(113, 1);
        break;
    
    case 3:
        cutscene_screen_fade_out(c_white, 0.0064);
        break;
    
    case 4:
        obj_screen_fade_effect.persistent = true;
        persistent = true;
        room = rm_dunes_03;
        obj_pl.x = 180;
        obj_pl.y = 180;
        obj_pl.image_alpha = 1;
        scene++;
        break;
    
    case 5:
        cutscene_wait(1.5);
        break;
    
    case 6:
        cutscene_screen_fade_in(0.0256);
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        cutscene_end();
        global.dunes_flag[44] = 1;
        break;
}
