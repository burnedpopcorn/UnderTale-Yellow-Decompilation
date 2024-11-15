var starlo;

starlo = 1169;

with (starlo)
{
    if (interact)
        other.scene++;
}

switch (scene)
{
    case 1:
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = starlo;
            message[0] = "* Howdy howdy, Clover!";
            message[1] = "* Ready for round two?";
            prt[0] = 417;
            prt[1] = 417;
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (audio_sound_get_gain(obj_radio.current_song) == snd_chem_05_axis_acid_1)
                    audio_sound_gain(obj_radio.current_song, 0, 500);
                
                message[2] = "* Swell!";
                message[3] = "* Seein' as the original#  plans were altered, we#  got catchin' up to do.";
                message[4] = "* Let's gather the others!";
                prt[2] = 417;
                prt[3] = 407;
                prt[4] = 417;
            }
            
            if (outcome == 2)
            {
                message[2] = "* Alright, take yer#  time.";
                prt[2] = 417;
                other.scene = 0;
            }
        }
        
        if (!global.dialogue_open)
        {
            global.dunes_flag[20] = 4;
            trn = instance_create(0, 0, obj_transition_clock);
            trn.newRoom = 127;
            trn.xx = 700;
            trn.yy = 375;
            instance_destroy();
        }
        
        break;
}
