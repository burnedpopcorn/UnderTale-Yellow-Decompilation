if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "alarm_beep":
            audio_stop_sound(snd_bullet_warning);
            audio_play_sound(snd_bullet_warning, 1, 0);
            break;
    }
}
