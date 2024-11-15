if (live_call())
    return global.live_result;

if (sprite_index == spr_flowey_enter_plain || sprite_index == spr_flowey_enter)
{
    image_index = 0;
    image_speed = 0;
    sprite_index = spr_flowey_plain;
    
    if (sprite_index == spr_flowey_enter)
        sprite_index = spr_flowey_nice;
}
