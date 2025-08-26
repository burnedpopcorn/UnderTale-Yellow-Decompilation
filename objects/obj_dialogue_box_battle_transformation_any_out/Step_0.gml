if (no_loop_create == false)
{
    sprite_width_end = sprite_width_destination / sprite_width;
    sprite_height_end = sprite_height_destination / sprite_height;
    var sprite_width_multiplier = abs(image_xscale_default - (sprite_width_end * image_xscale_default));
    var sprite_height_multiplier = abs(image_yscale_default - (sprite_height_end * image_yscale_default));
    
    if ((sprite_width_end * image_xscale_default) > image_xscale_default)
        width_increase_type = 1;
    else
        width_increase_type = 0;
    
    if ((sprite_height_end * image_yscale_default) > image_yscale_default)
        height_increase_type = 1;
    else
        height_increase_type = 0;
    
    max_frames = 10;
    sprite_width_increase = sprite_width_multiplier / max_frames;
    sprite_height_increase = sprite_height_multiplier / max_frames;
    destination_x = x + disjoint_x;
    destination_y = y + disjoint_y;
    
    if (destination_x > x)
        x_increase_type = 1;
    else
        x_increase_type = 0;
    
    if (destination_y > y)
        y_increase_type = 1;
    else
        y_increase_type = 0;
    
    x_increase = disjoint_x / max_frames;
    y_increase = disjoint_y / max_frames;
    transform_direction = 0;
    no_loop_create = true;
}

if (transform_direction == 0 || transform_direction == 2)
{
    if (width_increase_type == 0)
    {
        if (image_xscale > (sprite_width_end * image_xscale_default))
        {
            image_xscale -= sprite_width_increase;
            
            if (image_xscale < (sprite_width_end * image_xscale_default))
                image_xscale = sprite_width_end * image_xscale_default;
        }
    }
    else if (width_increase_type == 1)
    {
        if (image_xscale < (sprite_width_end * image_xscale_default))
        {
            image_xscale += sprite_width_increase;
            
            if (image_xscale > (sprite_width_end * image_xscale_default))
                image_xscale = sprite_width_end * image_xscale_default;
        }
    }
    
    if (x_increase_type == 0)
    {
        if (x > destination_x)
        {
            x += x_increase;
            
            if (x < destination_x)
                x = destination_x;
        }
    }
    else if (x_increase_type == 1)
    {
        if (x < destination_x)
        {
            x += x_increase;
            
            if (x > destination_x)
                x = destination_x;
        }
    }
    
    if (((width_increase_type == 0 && image_xscale == (sprite_width_end * image_xscale_default)) || (width_increase_type == 1 && image_xscale == (sprite_width_end * image_xscale_default))) && x == destination_x && transform_direction != 2)
        transform_direction = 1;
}

if (transform_direction == 1 || transform_direction == 2)
{
    if (height_increase_type == 0)
    {
        if (image_yscale > (sprite_height_end * image_yscale_default))
        {
            image_yscale -= sprite_height_increase;
            
            if (image_yscale < (sprite_height_end * image_yscale_default))
                image_yscale = sprite_height_end * image_yscale_default;
        }
    }
    else if (height_increase_type == 1)
    {
        if (image_yscale < (sprite_height_end * image_yscale_default))
        {
            image_yscale += sprite_height_increase;
            
            if (image_yscale > (sprite_height_end * image_yscale_default))
                image_yscale = sprite_height_end * image_yscale_default;
        }
    }
    
    if (y_increase_type == 0)
    {
        if (y > destination_y)
        {
            y += y_increase;
            
            if (y < destination_y)
                y = destination_y;
        }
    }
    else if (y_increase_type == 1)
    {
        if (y < destination_y)
        {
            y += y_increase;
            
            if (y > destination_y)
                y = destination_y;
        }
    }
    
    if (((height_increase_type == 0 && image_yscale == (sprite_height_end * image_yscale_default)) || (height_increase_type == 1 && image_yscale == (sprite_height_end * image_yscale_default))) && y == destination_y && transform_direction != 2)
        transform_direction = 0;
}

if (((width_increase_type == 0 && image_xscale == (sprite_width_end * image_xscale_default)) || (width_increase_type == 1 && image_xscale == (sprite_width_end * image_xscale_default))) && ((height_increase_type == 0 && image_yscale == (sprite_height_end * image_yscale_default)) || (height_increase_type == 1 && image_yscale == (sprite_height_end * image_yscale_default))) && x == destination_x && y == destination_y && no_loop == false)
{
    alarm[0] = 2;
    no_loop = true;
}
