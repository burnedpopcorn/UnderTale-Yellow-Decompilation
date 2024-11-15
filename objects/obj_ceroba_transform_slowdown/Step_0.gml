if (live_call())
    return global.live_result;

if (starlo_take_aim_fade_out == true)
{
    if (starlo_take_aim_overlay_alpha > 0.1)
    {
        starlo_take_aim_overlay_alpha = lerp(starlo_take_aim_overlay_alpha, 0, 0.2);
    }
    else
    {
        starlo_take_aim_overlay_alpha = 0;
        instance_destroy();
    }
}
