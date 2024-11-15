if (live_call())
    return global.live_result;

if (vspeed > vspeed_max)
    vspeed = vspeed_max;

if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 3))
{
    if (bounce_count > 0)
    {
        bounce_count -= 1;
        vspeed = -10;
        hspeed *= 0.35;
        alarm[0] = 1;
    }
}

image_angle += 15;
