if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[36] >= 3)
{
    event_user(1);
    audio_play_sound(snd_sliding_door_open, 1, 0);
    instance_destroy();
}
