if (live_call())
    return global.live_result;

if (sprite_index == spr_bigfrog_mouth_attack)
{
    if (image_speed == -1 && image_index <= 0)
    {
        image_speed = 0;
        image_index = 0;
        
        if (!alarm[0])
            alarm[0] = 20;
    }
}
