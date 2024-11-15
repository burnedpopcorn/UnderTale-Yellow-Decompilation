var starlo;

starlo = 1169;

if (starlo.interact)
    other.scene++;

switch (scene)
{
    case 1:
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            color = true;
            col_modif[0] = 65535;
            talker[0] = starlo;
            message[0] = "* Howdy!";
            message[1] = "* Man, am I excited for#  this.";
            message[2] = "* Have you done#  everythin' you wanted?";
            message[3] = "* Caught some bandits?#  SAVED some lives?";
            message_col[3][0] = "                      #  SAVED            ";
            prt[0] = 417;
            prt[1] = 417;
            prt[2] = 417;
            prt[3] = 417;
            ch_msg = 3;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (audio_sound_get_gain(obj_radio.current_song) == snd_chem_05_axis_acid_1)
                    audio_sound_gain(obj_radio.current_song, 0, 500);
                
                message[4] = "* Let's get goin' then!";
                prt[4] = 417;
            }
            
            if (outcome == 2)
            {
                message[4] = "* Hurry it on up, then!";
                prt[4] = 417;
                other.scene = 0;
            }
        }
        
        if (!global.dialogue_open)
        {
            global.dunes_flag[20] = 8;
            trn = instance_create(0, 0, obj_transition_clock);
            trn.newRoom = 127;
            trn.xx = 700;
            trn.yy = 375;
            instance_destroy();
        }
        
        break;
}
