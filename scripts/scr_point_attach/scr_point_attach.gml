function scr_point_attach()
{
    if (live_call())
        return global.live_result;
    
    var coords = argument[0];
    var target_instance = argument[1];
    
    if (!instance_exists(target_instance))
    {
        show_debug_message("Target attach point instance does not exist!");
        return false;
    }
    
    var x_offset = sprite_get_xoffset(target_instance.sprite_index);
    var y_offset = sprite_get_yoffset(target_instance.sprite_index);
    
    if (argument_count > 2 && argument[2] == true)
    {
        x_offset = 0;
        y_offset = 0;
    }
    
    var array_index = clamp(target_instance.image_index, 0, array_length(coords) - 1);
    x = (target_instance.x - x_offset) + coords[array_index][0];
    y = (target_instance.y - y_offset) + coords[array_index][1];
}
