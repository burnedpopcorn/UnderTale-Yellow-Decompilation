var i;

if (live_call())
    return global.live_result;

if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "spike_spawn":
            for (i = 0; i < 10; i++)
            {
                if (weakpoint_position == i)
                {
                    obj_flowey_battle_phase_2_weakpoint.x = spikes[i][0];
                    obj_flowey_battle_phase_2_weakpoint.y = spikes[i][1];
                    obj_flowey_battle_phase_2_weakpoint.image_angle = spikes[i][2];
                    obj_flowey_battle_phase_2_weakpoint.image_speed = 1;
                }
                else
                {
                    with (instance_create_depth(spikes[i][0], spikes[i][1], depth + 1, obj_flowey_battle_phase_2_weakpoint_spikes))
                        image_angle = other.spikes[i][2];
                }
            }
            
            break;
        
        case "vine_pause":
            image_speed = 0;
            break;
    }
}
