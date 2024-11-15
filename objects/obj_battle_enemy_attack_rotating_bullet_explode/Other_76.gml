if (live_call())
    return global.live_result;

switch (ds_map_find_value(event_data, "message"))
{
    case "ceroba_bullet_flash":
        scene = 1;
        break;
}
