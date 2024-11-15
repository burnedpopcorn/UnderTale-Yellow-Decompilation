if (live_call())
    return global.live_result;

if (sprite_index == spr_flowey_enter_plain)
{
    image_index = 0;
    image_speed = 0;
    sprite_index = flowey_plain;
    y += 44;
}

if (sprite_index == spr_evil_flowey_dies_10)
{
    image_speed = 0;
    image_index = image_number - 1;
}
