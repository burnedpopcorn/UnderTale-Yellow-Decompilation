if (live_call())
    return global.live_result;

if (image_index >= (image_number - 1))
{
    image_alpha = 0;
    
    if (!alarm[1])
        alarm[1] = spawn_delay;
}
