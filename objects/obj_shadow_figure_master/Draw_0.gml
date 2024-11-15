var i;

if (live_call())
    return global.live_result;

for (i = 0; i < array_length(object_array); i++)
{
    if (!instance_exists(object_array[i]))
        continue;
    
    with (object_array[i])
        draw_sprite_ext(sprite_index, image_index, x, y + ((sprite_get_height(sprite_index) - sprite_get_yoffset(sprite_index)) * 2), 1, -1, 0, c_black, 1);
}
