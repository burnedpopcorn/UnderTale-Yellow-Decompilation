if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "axis_acid_sound":
            audio_play_sound(snd_chem_05_axis_acid_1, 1, 0);
            break;
    }
}
