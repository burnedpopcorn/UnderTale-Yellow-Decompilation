if (live_call())
    return global.live_result;

if (place_meeting(x, y, obj_pl))
{
    var narrator = instance_create_depth(0, 0, -100, obj_dialogue_narrator);
    
    with (narrator)
    {
        for (var i = 0; i < array_length(other.message); i++)
            message[i] = other.message[i];
        
        draw_set_font(fnt_main);
        text_x[1] = 160 - (string_width(message[0]) * 0.5);
    }
    
    if (target_flag > global.hotland_flag[8])
        global.hotland_flag[8] = target_flag;
    
    instance_destroy();
}
