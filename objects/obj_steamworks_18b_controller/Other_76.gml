if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "mo_jacket_explode":
            audio_play_sound(snd_mo_jacket_explosion, 1, 0);
            audio_play_sound(snd_flame_loop, 1, 0);
            break;
    }
}
