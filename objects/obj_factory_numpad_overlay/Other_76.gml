if (ds_map_find_value(event_data, "event_type") == "sequence event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "sequence_pause":
            layer_sequence_pause(overlay_sequence);
    }
}
