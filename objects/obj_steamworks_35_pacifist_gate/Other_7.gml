if (live_call())
    return global.live_result;

if (!noloop)
{
    image_speed = 0;
    image_index = image_number - 1;
    audio_stop_sound(snd_rumble);
    audio_play_sound(snd_mart_impact_2, 1, 0);
    scr_screenshake(8, 2);
    noloop = true;
}
