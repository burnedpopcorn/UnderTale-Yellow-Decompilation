if (global.flag[18] == 2)
{
    instance_destroy();
    exit;
}

if (global.flag[18] == 0)
{
    if (path_position == 1 && waiter == 0)
    {
        audio_play_sound(snd_tinyfroggit, 1, 0);
        audio_sound_gain(snd_tinyfroggit, 2, 0);
        audio_sound_pitch(snd_tinyfroggit, 1.5);
        alarm[1] = 45;
        waiter = 1;
    }
}
else if (global.flag[18] == 1 && waiter == 0)
{
    instance_create(x + 150, y, obj_mfnpc2);
    waiter = 1;
}
