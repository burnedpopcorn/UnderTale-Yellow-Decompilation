if (global.flag[15] == 1)
{
    obj_pl.plspd = 3;
    obj_pl.state = scr_normal_state;
    global.cutscene = false;
    
    with (obj_radio)
    {
        audio_sound_gain(bgm, 1, 0);
        audio_sound_pitch(mus_wind, 1);
        ms = 127;
    }
    
    instance_destroy();
}
else if (global.flag[15] != 0)
{
    obj_pl.x = 160;
    obj_pl.plspd = 3;
    obj_pl.direction = 90;
    obj_pl.state = scr_normal_state;
    global.cutscene = false;
    instance_destroy();
}

fadealpha = 0;
waiter = 0;

if (global.route == 3)
    instance_destroy();
