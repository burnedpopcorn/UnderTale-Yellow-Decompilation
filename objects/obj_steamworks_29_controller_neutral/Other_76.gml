if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "guardener_arms_sound":
            audio_play_sound(snd_guardener_rise_arms, 1, 0);
            break;
    }
}
