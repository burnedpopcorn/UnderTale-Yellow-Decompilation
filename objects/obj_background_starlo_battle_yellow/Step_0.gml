var opacity_target;

if (live_call())
    return global.live_result;

opacity_target = ((1 + sin(current_time / 1000)) * 0.3) + 0.4;

if (instance_exists(obj_starlo_dead))
{
    instance_destroy(obj_tumble_generator);
    
    if (opacity > 0)
        opacity -= 0.03;
}

if (fade_in == 1)
{
    if (opacity < opacity_target)
    {
        opacity += 0.05;
    }
    else
    {
        instance_create_depth(0, 0, depth - 1, obj_tumble_generator);
        fade_in = 2;
    }
}
else if (fade_in == 2)
{
    opacity = ((1 + sin(current_time / 1000)) * 0.3) + 0.4;
}
