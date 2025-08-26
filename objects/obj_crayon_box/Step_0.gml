if (live_call())
    return global.live_result;

image_alpha = obj_crayon_minigame.draw_alpha;

if (image_index < (image_number - 1))
{
    var new_offset = crayon_y_offset;
    
    if (image_index > 4)
        new_offset = crayon_y_offset - ((crayon_y_offset * (image_index - 4)) / (image_number - 4 - 1));
    
    with (obj_crayon)
        draw_y_offset = new_offset;
}
else
{
    if (crayon_y_offset > 0)
    {
        crayon_y_offset = 0;
        
        with (obj_crayon)
            draw_y_offset = 0;
    }
    
    image_speed = 0;
    image_index = image_number - 1;
}
