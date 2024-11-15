if (ds_map_find_value(event_data, "event_type") == "sequence event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "mecha_screenshake":
            audio_play_sound(snd_undertale_impact, 1, 0);
            scr_screenshake_battle_custom(7, 3);
            break;
    }
}
