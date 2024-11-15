if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "flowey_fall":
            audio_play_sound(snd_mart_impact_3, 1, 0);
            break;
    }
}
