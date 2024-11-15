switch (scene)
{
    case 0:
        if (obj_pl.y < 240)
        {
            scr_cutscene_start();
            cutscene_audio_fade(obj_radio.current_song, 0, 500, 0.25, false);
            obj_pl.direction = 90;
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        obj_steamworks_31_door.image_speed = 1;
        audio_play_sound(snd_sliding_door_open, 1, 0);
        cutscene_advance();
        break;
    
    case 3:
        if (obj_steamworks_31_door.image_index >= (obj_steamworks_31_door.image_number - 1))
            cutscene_advance();
        
        break;
    
    case 4:
        global.sworks_flag[59] = 1;
        audio_sound_gain(obj_radio.current_song, 1, 500);
        cutscene_end();
        break;
}
