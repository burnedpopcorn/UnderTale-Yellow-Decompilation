switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            if (global.route == 3)
            {
                if (global.hotland_flag[9] >= 3)
                {
                    if (!instance_exists(obj_dialogue_narrator))
                    {
                        var narrator = instance_create_depth(0, 0, -100, obj_dialogue_narrator);
                        
                        with (narrator)
                            message[0] = "* (Not of interest.)";
                    }
                    
                    exit;
                }
            }
            
            scr_cutscene_start();
            audio_play_sound(snd_knock_beautiful, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            if (global.route == 3)
            {
                message[0] = "* (No response.)";
            }
            else
            {
                for (var i = 0; i < array_length(other.message); i++)
                    message[i] = other.message[i];
            }
        }
        
        break;
    
    case 3:
        scene = 0;
        scr_cutscene_end();
        break;
}
