if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (keyboard_multicheck_pressed(0) && scr_interact())
            cutscene_advance();
        
        break;
    
    case 1:
        if (!instance_exists(obj_factory_numpad_overlay))
            instance_create(0, 0, obj_factory_numpad_overlay);
        
        scr_cutscene_start();
        scene++;
        break;
    
    case 2:
        if (obj_factory_numpad_overlay.entry_correct == 1)
        {
            event_user(1);
            audio_play_sound(snd_sliding_door_open, 1, 0);
            global.sworks_flag[36] = 3;
            obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_blank;
            alarm[1] = 20;
            scene = -1;
        }
        else if (obj_factory_numpad_overlay.entry_correct == 0)
        {
            scene++;
        }
        
        break;
    
    case 3:
        if (!instance_exists(obj_factory_numpad_overlay))
        {
            scr_cutscene_end();
            scene = 0;
        }
        
        break;
}
