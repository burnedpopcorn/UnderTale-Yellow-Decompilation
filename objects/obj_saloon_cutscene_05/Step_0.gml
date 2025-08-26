var starlo = 1169;

if (starlo.interact)
    other.scene++;

switch (scene)
{
    case 1:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = starlo;
            message[0] = "* Welcome back, partner!";
            message[1] = "* We're about halfway#  done with yer trainin'!";
            message[2] = "* They grow up so fast...";
            message[3] = "* Ready to continue?";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_plain;
            prt[3] = spr_portrait_starlo_normal;
            ch_msg = 3;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (audio_sound_get_gain(obj_radio.current_song) == 1)
                    audio_sound_gain(obj_radio.current_song, 0, 500);
                
                message[4] = "* Follow me!";
                prt[4] = spr_portrait_starlo_normal;
            }
            
            if (outcome == 2)
            {
                message[4] = "* Alright, take yer#  time.";
                prt[4] = spr_portrait_starlo_normal;
                other.scene = 0;
            }
        }
        
        if (!global.dialogue_open)
        {
            global.dunes_flag[20] = 6;
            trn = instance_create(0, 0, obj_transition_clock);
            trn.newRoom = 127;
            trn.xx = 700;
            trn.yy = 375;
            instance_destroy();
        }
        
        break;
}
