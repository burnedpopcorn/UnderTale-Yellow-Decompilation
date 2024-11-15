if (y > y_end)
{
    if (sprite_index != spr_dunes_10_pebbles_fall)
    {
        sprite_index = spr_dunes_10_pebbles_fall;
        image_index = 0;
        vspeed = 0;
    }
    else if (on_animation_end())
    {
        image_index = image_number - 1;
        image_speed = 0;
        
        if (!alarm[0])
            alarm[0] = 10;
    }
    
    exit;
}

vspeed += 0.1;
