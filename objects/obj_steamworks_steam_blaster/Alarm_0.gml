steam_active = true;
alarm[0] = steam_interval * 30;
alarm[1] = 20;
alarm[3] = alarm[0] * 0.8;

if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.HView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.WPort, 0)))
{
    if (obj_steamworks_07_controller.steam_audio_noloop == false)
    {
        audio_play_sound(steam_sound, 1, 0);
        audio_sound_gain(steam_sound, 0.25, 0);
        audio_sound_pitch(steam_sound, 1.1);
        
        with (obj_steamworks_07_controller)
        {
            steam_audio_noloop = true;
            
            if (!alarm[1])
                alarm[1] = 1;
        }
    }
}
