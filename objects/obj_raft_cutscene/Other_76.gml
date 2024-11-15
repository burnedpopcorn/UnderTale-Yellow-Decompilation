if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "martlet_book_sound":
            audio_play_sound(snd_martlet_book, 1, 0);
            break;
    }
}
