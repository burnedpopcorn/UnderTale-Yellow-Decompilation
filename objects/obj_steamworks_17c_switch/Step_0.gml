switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            scr_cutscene_start();
            audio_play_sound(snd_switch, 1, 0);
            scr_audio_fade_out(obj_radio.current_song, 750);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* (Something happened somewhere.)";
        
        break;
    
    case 3:
        scr_radio_restart();
        audio_sound_gain(obj_radio.current_song, 1, 0);
        cutscene_advance();
        scr_cutscene_end();
        global.sworks_flag[46] = 1;
        break;
    
    case 4:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            scr_text();
            
            with (msg)
                message[0] = "* (Something already happened#  somewhere.)";
        }
        
        break;
}
