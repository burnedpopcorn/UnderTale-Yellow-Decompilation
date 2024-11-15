if (slide == 1)
{
    audio_play_sound(snd_mo_stand_arrive, 20, 0);
    slide = 2;
    kiosk_hsp = 11.8;
}

x += kiosk_hsp;

if (slide == 2)
{
    if (kiosk_hsp > 0)
    {
        kiosk_hsp -= 0.4;
    }
    else
    {
        kiosk_hsp = 0;
        slide = 3;
    }
}

if (slide == 4)
{
    audio_play_sound(snd_mo_stand_depart, 20, 0);
    slide = 5;
    kiosk_hsp = -11.8;
}

if (slide == 5)
{
    if (kiosk_hsp < 0)
    {
        kiosk_hsp += 0.4;
    }
    else
    {
        kiosk_hsp = 0;
        
        with (obj_snowdin_09_mo)
            mo_change_depth = false;
        
        instance_destroy();
    }
}
