switch (scene)
{
    case 0:
        if (transition_alpha < 1)
            transition_alpha += 0.15;
        else
            scene++;
        
        break;
    
    case 1:
        room = rm_steamworks_04;
        obj_pl.image_alpha = 0;
        obj_pl.x = 220;
        obj_pl.y = 80;
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
        with (obj_steamworks_04_door)
        {
            image_speed = 0.5;
            image_index = 0;
        }
        
        audio_play_sound(snd_rumble, 1, 1);
        cutscene_advance();
        break;
    
    case 5:
        if (obj_steamworks_04_door.image_index >= (obj_steamworks_04_door.image_number - 1))
        {
            obj_steamworks_04_door.image_index = obj_steamworks_04_door.image_number - 1;
            obj_steamworks_04_door.image_speed = 0;
            audio_stop_sound(snd_rumble);
            audio_play_sound(snd_mart_impact_3, 1, 0);
            cutscene_advance();
        }
        
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
        global.sworks_flag[1] = 2;
        room = rm_steamworks_04c;
        obj_pl.image_alpha = 1;
        obj_pl.x = 170;
        obj_pl.y = 190;
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
