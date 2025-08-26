switch (scene)
{
    case 0:
        if (obj_pl.x <= 90)
            cutscene_advance();
        
        break;
    
    case 1:
        scr_cutscene_start();
        cutscene_advance();
        break;
    
    case 2:
        cutscene_sfx_play(snd_success, 1);
        break;
    
    case 3:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 4:
        cutscene_npc_walk(obj_player_npc, 80, 105, 3, "x", "up");
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        with (obj_steamworks_07_lever)
        {
            image_speed = 1/3;
            audio_play_sound(snd_switch, 1, 0);
        }
        
        with (obj_steamworks_steam_blaster)
            instance_destroy();
        
        cutscene_advance();
        break;
    
    case 7:
        if (obj_steamworks_07_lever.image_speed == 0)
            cutscene_advance();
        
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        global.sworks_flag[8] = 1;
        cutscene_end();
        break;
}
