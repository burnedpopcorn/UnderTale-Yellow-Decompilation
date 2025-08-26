if (live_call())
    return global.live_result;

if (laser_active == true)
{
    var x_offset = 0;
    var y_offset = 0;
    
    switch (image_angle)
    {
        case 0:
            x_offset = 10;
            break;
        
        case 90:
            y_offset = -10;
            break;
        
        case 180:
            x_offset = -10;
            break;
    }
    
    draw_sprite_ext(spr_heart_yellow_blast_1, image_index, x, y, 1, laser_width, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_heart_yellow_blast_2, 0, x + x_offset, y + y_offset, laser_length, laser_width, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_heart_yellow_blast_3, impact_frame_current, x + lengthdir_x(laser_length, direction), y + lengthdir_y(laser_length, direction), 1, laser_width, image_angle, c_white, image_alpha);
}
