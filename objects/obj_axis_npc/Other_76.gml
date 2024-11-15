if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "axis_charge_sound":
            audio_play_sound(snd_axis_ball_charge, 1, 0);
            break;
    }
}
