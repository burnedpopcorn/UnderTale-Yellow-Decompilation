if (obj_pl.y < 300)
{
    with (obj_radio)
        audio_sound_pitch(bgm, 1);
    
    obj_pl.plspd = 3;
    fadealpha = 0;
}

if (obj_pl.y > 300)
{
    fadealpha = (obj_pl.y - 300) * 0.002;
    obj_pl.plspd = 3 - ((obj_pl.y - 300) * 0.004);
    var pitch = 1 - ((obj_pl.y - 300) * 0.001);
    
    with (obj_radio)
        audio_sound_pitch(bgm, pitch);
}

if (fadealpha >= 1 && waiter == 0)
{
    fadealpha = 1;
    scr_cutscene_start();
    alarm[0] = 60;
    waiter = 1;
}
