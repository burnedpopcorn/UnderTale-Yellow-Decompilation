if (scr_interact() && keyboard_multicheck_pressed(0) && scene == 0)
{
    scr_cutscene_start();
    scene = 1;
}

switch (scene)
{
    case 1:
        if (image_speed == 0 && image_index == 0)
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
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            message[0] = "* (An empty elevator#  shaft lies before you.)";
        }
        
        break;
    
    case 3:
        scr_cutscene_end();
        scene = 0;
        break;
}
