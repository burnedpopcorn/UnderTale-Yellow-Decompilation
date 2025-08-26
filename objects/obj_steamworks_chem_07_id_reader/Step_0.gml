if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            if (global.sworks_flag[55] == 0)
            {
                scr_cutscene_start();
                cutscene_advance();
            }
            else
            {
                scr_text();
                
                with (msg)
                    message[0] = "* (The door is already#  open.)";
            }
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* (Swipe your ID?)";
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                other.scene++;
            }
            else if (outcome == 2)
            {
                audio_play_sound(snd_fail, 1, 0);
                other.scene = 0;
                scr_cutscene_end();
            }
        }
        
        break;
    
    case 2:
        instance_create_depth(0, 0, -999, obj_sworks_id);
        obj_sworks_id.end_cutscene = false;
        cutscene_advance();
        break;
    
    case 3:
        if (!instance_exists(obj_sworks_id))
            cutscene_advance();
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_advance();
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        obj_pl.direction = 270;
        audio_sound_gain(obj_radio.current_song, 0.25, 1000);
        cutscene_advance();
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        with (obj_steamworks_chem_07_door)
        {
            image_speed = 0.5;
            image_index = 0;
        }
        
        audio_play_sound(snd_rumble, 1, 1);
        cutscene_advance();
        break;
    
    case 10:
        if (obj_steamworks_chem_07_door.image_index >= (obj_steamworks_chem_07_door.image_number - 1))
        {
            obj_steamworks_chem_07_door.image_index = obj_steamworks_chem_07_door.image_number - 1;
            obj_steamworks_chem_07_door.image_speed = 0;
            obj_steamworks_chem_07_door.solid = false;
            audio_stop_sound(snd_rumble);
            audio_play_sound(snd_mart_impact_3, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 11:
        cutscene_screenshake(0.5, 2);
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        audio_sound_gain(obj_radio.current_song, 1, 1000);
        global.sworks_flag[55] = 1;
        scr_cutscene_end();
        scene = 0;
        break;
}
