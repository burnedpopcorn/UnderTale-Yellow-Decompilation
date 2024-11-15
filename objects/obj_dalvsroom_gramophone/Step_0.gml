var audio_sound_gain_radio, audio_sound_gain_gramophone, audio_gain;

depth = -y;
audio_sound_gain_radio = audio_sound_get_gain(obj_radio.current_song);
audio_sound_gain_gramophone = audio_sound_get_gain(mus_dalventertainer);

if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)) && (audio_sound_gain_radio == snd_chem_05_axis_acid_1 || audio_sound_gain_gramophone == snd_chem_05_axis_acid_1))
    waiter = 1;

if (global.route != 3)
{
    if (!audio_is_playing(mus_dalventertainer))
    {
        if (waiter == 1)
        {
            scr_text();
            
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* (It's a gramophone.)";
                message[1] = "* (It looks pretty old.)";
                message[2] = "* (Maybe it's a grandmaphone.)";
                message[3] = "* (A record labeled \"Dalv Organ#  Demo\" is queued up to play.)";
                message[4] = "* (Play it?)";
                
                if (outcome >= 1 && outcome <= 2 && message_current == 4)
                {
                    if (outcome == 1)
                        obj_dalvsroom_gramophone.waiter = 2;
                    else
                        obj_dalvsroom_gramophone.waiter = 4;
                }
                
                if ((message_current + 1) == 4)
                {
                    ch_msg = 4;
                    ch[1] = "Yes";
                    ch[2] = "No";
                }
            }
        }
        
        if (waiter == 2 && !instance_exists(obj_dialogue))
        {
            with (obj_radio)
                audio_sound_gain(current_song, 0, 1000);
            
            waiter++;
        }
        
        if (waiter == 3)
        {
            with (obj_radio)
            {
                audio_gain = audio_sound_get_gain(current_song);
                
                if (audio_gain == 0)
                {
                    audio_stop_sound(current_song);
                    
                    with (obj_dalvsroom_gramophone)
                    {
                        audio_sound_gain(mus_dalventertainer, 1, 0);
                        audio_play_sound(mus_dalventertainer, 1, 0);
                        image_speed = 0.26666666666666666;
                        waiter = 0;
                        obj_pl.alarm[0] = 1;
                    }
                }
            }
        }
        
        if (waiter == 4)
        {
            waiter = 0;
            obj_pl.alarm[0] = 1;
            
            with (obj_dialoguebox_dummy)
                instance_destroy();
        }
    }
    else
    {
        if (waiter == 1)
        {
            scr_text();
            
            with (msg)
            {
                if (!instance_exists(obj_dialoguebox_dummy))
                    instance_create(0, 0, obj_dialoguebox_dummy);
                
                portrait = false;
                sndfnt = 99;
                message[0] = "* (The record must be damaged or#  broken.)";
                message[1] = "* (Stop this wretched music?)";
                
                if (outcome >= 1 && outcome <= 2 && message_current == 1)
                {
                    if (outcome == 1)
                        obj_dalvsroom_gramophone.waiter = 2;
                    else
                        obj_dalvsroom_gramophone.waiter = 4;
                }
                
                if ((message_current + 1) == 1)
                {
                    ch_msg = 1;
                    ch[1] = "Yes";
                    ch[2] = "No";
                }
            }
        }
        
        if (waiter == 2 && !instance_exists(obj_dialogue))
        {
            scr_text();
            
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* (You turn off the gramophone.)";
                message[1] = "* (Maybe it's a work in#  progress.)";
                choice = false;
            }
            
            audio_sound_gain(mus_dalventertainer, 0, 1000);
            waiter++;
        }
        
        if (waiter == 3 && !instance_exists(obj_dialogue))
        {
            instance_destroy(obj_dialoguebox_dummy);
            audio_gain = audio_sound_get_gain(mus_dalventertainer);
            
            if (audio_gain == 0)
            {
                audio_stop_sound(mus_dalventertainer);
                
                with (obj_radio)
                {
                    audio_sound_gain(current_song, 1, 0);
                    audio_play_sound(current_song, 1, true);
                    
                    with (obj_dalvsroom_gramophone)
                    {
                        image_speed = 0;
                        image_index = 0;
                        waiter = 0;
                        obj_pl.alarm[0] = 1;
                    }
                }
            }
        }
        
        if (waiter == 4)
        {
            waiter = 0;
            obj_pl.alarm[0] = 1;
            
            with (obj_dialoguebox_dummy)
                instance_destroy();
        }
    }
}
else
{
    if (waiter == 1 && !instance_exists(obj_dialogue))
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* (An old gramophone.)";
            message[1] = "* (You spare yourself by not#  playing the record on it.)";
        }
        
        waiter++;
    }
    
    if (waiter == 2)
        waiter = 0;
}

if (!audio_is_playing(mus_dalventertainer))
{
    image_speed = 0;
    image_index = 0;
}
