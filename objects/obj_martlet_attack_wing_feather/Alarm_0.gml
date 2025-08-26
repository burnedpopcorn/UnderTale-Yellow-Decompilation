if (live_call())
    return global.live_result;

state = 1;
image_angle = direction - 180;
image_alpha = 1;

if (!audio_is_playing(snd_mart_feather_atk3))
{
    var shoot_sound = audio_play_sound(snd_mart_feather_atk3, 20, 0);
    audio_sound_set_track_position(shoot_sound, 0.7);
}
