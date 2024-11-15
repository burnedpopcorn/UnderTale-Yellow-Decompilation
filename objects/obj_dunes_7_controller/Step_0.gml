if (live_call())
    return global.live_result;

if (room != rm_dunes_07)
    exit;

with (obj_pl)
{
    if (place_meeting(x, y, obj_event_collider) && state == scr_normal_state)
    {
        if (x > obj_event_collider.x)
        {
            other.shift_layers = 1;
            
            if (global.dunes_flag[2] == 0)
                obj_sandstorm_controller.storm_y_start = 170;
        }
        else
        {
            other.shift_layers = 0;
            
            if (global.dunes_flag[2] == 0)
                obj_sandstorm_controller.storm_y_start = 360;
        }
    }
}

if (shift_layers == 0)
{
    obj_collider_dynamic.layer_active = 1;
    layer_depth("shifting_tiles", -1000);
    layer_depth("shifting_bridge", -1001);
    layer_depth("shifting_bridge_2", -1001);
    layer_depth("shifting_bridge_3", -1001);
    layer_depth("WallNearBridge", -2000);
}
else if (shift_layers == 1)
{
    obj_collider_dynamic.layer_active = 0;
    layer_depth("shifting_tiles", 999999);
    layer_depth("shifting_bridge", 999998);
    layer_depth("shifting_bridge_2", 999998);
    layer_depth("shifting_bridge_3", 999998);
    layer_depth("WallNearBridge", -212);
}
