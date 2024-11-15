if (increase_image_alpha == true)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
    {
        obj_decibat_head.alarm[0] = 30;
        alarm[0] = 60;
        increase_image_alpha = false;
    }
}

if (falling == true)
{
    if (time_elapsed == time_max)
    {
        instance_create(x, y, obj_decibat_body);
        image_alpha = 0;
        alarm[2] = 30;
        falling = false;
    }
    
    if (falling == true)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed > time_max)
            time_elapsed = time_max;
        
        y = draw_position_y + animation_disjoint_y;
        image_angle = 180 * ((time_max - time_elapsed) / round(time_max / 2));
    }
}
