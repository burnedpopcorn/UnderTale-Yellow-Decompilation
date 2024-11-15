if (scr_interact() && keyboard_multicheck_pressed(0) && scene == 0)
{
    scr_cutscene_start();
    scene = 1;
}

switch (scene)
{
    case 1:
        if (global.sworks_flag[23] == 0 && global.party_member != -4)
        {
            cutscene_advance();
        }
        else
        {
            scr_text();
            
            with (msg)
                message[0] = "* (An empty elevator#  shaft lies before you.)";
            
            global.cutscene = false;
            scene = 0;
        }
        
        break;
    
    case 2:
        if (image_speed == 0)
        {
            image_speed = 1;
            audio_play_sound(snd_sliding_door_open, 1, 0);
        }
        
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            sndfnt_array[1] = 108;
            message[0] = "* (An empty elevator#  shaft lies before you.)";
            message[1] = "* Well then...";
            message[2] = "* \"Convenience\" was never#  in today's dictionary#  anyway.";
            message[3] = "* Gotta be a staircase#  closeby.";
            prt[1] = 377;
            prt[2] = 370;
            prt[3] = 370;
        }
        
        break;
    
    case 4:
        scr_cutscene_end();
        global.sworks_flag[23] = 1;
        scene = 0;
        break;
}
