if (live_call())
    return global.live_result;

if (ds_map_find_value(event_data, "event_type") == "sprite event" && layer_instance_get_instance(ds_map_find_value(event_data, "element_id")) == id)
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "ceroba_bell_debris":
            if (destroy_type == 1)
                instance_create_depth(x, y, -100, obj_attack_ceroba_bell_ring_orange);
            else
                instance_create_depth(x, y, -100, obj_attack_ceroba_bell_ring_blue);
            
            break;
    }
}
