if (live_call())
    return global.live_result;

if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "eye_shoot":
            if (oscillator == 0)
            {
                instance_create_depth(x, y, depth + 1, obj_flowey_battle_phase_2_clay_cone);
                obj_flowey_battle_phase_2_clay_cone.mode = irandom_range(0, 1);
                oscillator = 1;
            }
            else
            {
                oscillator = 0;
            }
            
            break;
    }
}
