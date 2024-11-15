if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "heart_grabbed":
            audio_play_sound(snd_attackhitcrit, 1, 0);
            scr_screenshake_battle(6, 2);
            break;
    }
}
