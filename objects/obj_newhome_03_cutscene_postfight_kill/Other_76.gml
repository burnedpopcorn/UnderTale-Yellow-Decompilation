if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "clover_crawl_move":
            clover_crawl_speed = 2;
            audio_play_sound(snd_clover_crawl, 1, 0);
            break;
    }
}
