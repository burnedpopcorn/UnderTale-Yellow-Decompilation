if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "starlo_overlay_white":
            starlo_overlay = 1;
            break;
        
        case "starlo_overlay_black":
            starlo_overlay = 2;
            break;
        
        case "starlo_overlay_off":
            starlo_overlay = 0;
            break;
    }
}
