if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scene = 1;
    scr_cutscene_start();
}

switch (scene)
{
    case 1:
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* (You turn the TV on.)";
        
        break;
    
    case 2:
        audio_play_sound(snd_tv_static, 1, 1);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(1.5);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* (This is your favorite#  channel!)";
            
            if (global.route == 3)
                message[0] = "* (Nothing.)";
        }
        
        break;
    
    case 5:
        audio_stop_sound(snd_tv_static);
        scr_cutscene_end();
        scene = 0;
        break;
}
