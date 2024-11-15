var steam_sound;

if (layer_instance_get_instance(ds_map_find_value(event_data, "element_id")) == id && ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "steam_sound":
            steam_sound = audio_play_sound(snd_pinkgoo_steam, 1, 0);
            audio_sound_pitch(steam_sound, random_range(0.8, 1));
            audio_sound_gain(steam_sound, 0.5, 0);
            break;
    }
}
