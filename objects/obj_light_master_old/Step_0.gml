var i;

if (live_call())
    return global.live_result;

for (i = 0; i < array_length(shadow_actor); i += 1)
{
    with (shadow_actor[i])
    {
        if (place_meeting(x, y, obj_shadow_collider))
            other.shadow_active[i] = true;
        else
            other.shadow_active[i] = false;
    }
    
    if (shadow_active[i] == true)
    {
        if (light_amount[i] < 0.4)
            light_amount[i] += 0.1;
        else
            light_amount[i] = 0.4;
    }
    else if (light_amount[i] > 0)
    {
        light_amount[i] -= 0.2;
    }
}

depth = -99999;
