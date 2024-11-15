switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0) && obj_pl.direction == 90)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            if (global.geno_complete[3] == true)
            {
                other.scene = 0;
                global.cutscene = false;
                message[0] = "* (A presence is cowering behind#  the storage cabinet.)\t";
                message[1] = "* (But it won't budge.)";
            }
            else
            {
                message[0] = "* (You notice wall cracks peeking#  out from behind the cabinet.)\t";
                message[1] = "* (Move it?)";
                ch_msg = 1;
                ch[1] = "Yes";
                ch[2] = "No";
                
                if (outcome == 1)
                    other.scene++;
                
                if (outcome == 2)
                {
                    scr_cutscene_end();
                    other.scene = 0;
                }
            }
        }
        
        break;
    
    case 2:
        layer_hspeed("moving_cabinet", -1);
        audio_play_sound(snd_rumble, 1, 1);
        cutscene_advance();
        break;
    
    case 3:
        if (layer_get_x("moving_cabinet") <= -40)
        {
            audio_stop_sound(snd_rumble);
            cutscene_advance();
        }
        
        break;
    
    case 4:
        audio_play_sound(snd_mart_impact_1, 1, 0);
        layer_hspeed("moving_cabinet", 0);
        global.sworks_flag[30] = 1;
        x -= 40;
        cutscene_advance();
        scr_cutscene_end();
        break;
}
