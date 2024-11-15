if (live_call())
    return global.live_result;

if (instance_number(obj_dunes_7_controller) > 1)
{
    instance_destroy();
    exit;
}

if (obj_pl.y > 240)
{
    shift_layers = 0;
    
    if (global.dunes_flag[2] == 0)
        obj_sandstorm_controller.storm_y_start = 360;
}
else
{
    shift_layers = 1;
    
    if (global.dunes_flag[2] == 0)
        obj_sandstorm_controller.storm_y_start = 170;
}
