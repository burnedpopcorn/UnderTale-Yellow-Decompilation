if (live_call())
    return global.live_result;

if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    if (layer_instance_get_instance(ds_map_find_value(event_data, "element_id")) == id)
    {
        switch (ds_map_find_value(event_data, "message"))
        {
            case "fire_pellets":
                if (x < 0 || x > 640)
                    exit;
                
                var pellet_number = 9;
                pellet_multiplier = 360 / pellet_number;
                
                for (var i = 0; i < pellet_number; i++)
                {
                    var pellet = instance_create_depth(x, y, depth - 1, obj_flowey_battle_phase_2_gray_pellet);
                    pellet.direction = pellet_multiplier * i;
                    pellet.speed = 14;
                }
                
                break;
        }
    }
}
