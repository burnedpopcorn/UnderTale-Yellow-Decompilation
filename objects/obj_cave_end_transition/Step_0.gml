switch (scene)
{
    case 0:
        fadealpha += 0.05;
        
        if (fadealpha >= 1)
        {
            audio_stop_sound(snd_rapids);
            audio_stop_sound(mus_ambient_river);
            
            if (global.snowdin_flag[13] == 1)
                scene = 1;
            else
                scene = 2;
            
            timer = 60;
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            portrait = false;
            message[0] = "* Hello? Clover? Are you okay?";
            message[1] = "* Ohno-ohno-ohno!";
            message[2] = "* You stay right there! I'll go#  get help!";
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 60;
        }
        
        break;
    
    case 2:
        if (!scr_timer())
            exit;
        
        room_goto(newRoom);
        
        if (instance_exists(obj_pl))
        {
            obj_pl.x = xx;
            obj_pl.y = yy;
        }
        else
        {
            instance_create(xx, yy, obj_pl);
        }
        
        scene++;
        break;
    
    case 3:
        fadealpha -= 0.05;
        
        if (fadealpha <= 0)
            instance_destroy();
        
        break;
}
