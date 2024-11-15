if (transform_direction == 0 || transform_direction == 2)
{
    if (width_increase_type == 1)
    {
        if (image_xscale > sprite_width_end)
        {
            image_xscale -= sprite_width_increase;
            
            if (image_xscale < sprite_width_end)
                image_xscale = sprite_width_end;
        }
    }
    else if (width_increase_type == 0)
    {
        if (image_xscale < sprite_width_end)
        {
            image_xscale += sprite_width_increase;
            
            if (image_xscale > sprite_width_end)
                image_xscale = sprite_width_end;
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
    
    if (image_xscale == sprite_width_end && x == destination_x && transform_direction != 2)
        transform_direction = 1;
}

if (transform_direction == 1 || transform_direction == 2)
{
    if (height_increase_type == 1)
    {
        if (image_yscale > sprite_height_end)
        {
            image_yscale -= sprite_height_increase;
            
            if (image_yscale < sprite_height_end)
                image_yscale = sprite_height_end;
        }
    }
    else if (height_increase_type == 0)
    {
        if (image_yscale < sprite_height_end)
        {
            image_yscale += sprite_height_increase;
            
            if (image_yscale > sprite_height_end)
                image_yscale = sprite_height_end;
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
    
    if (image_yscale == sprite_height_end && y == destination_y && transform_direction != 2)
        transform_direction = 0;
}

if (image_xscale == sprite_width_end && image_yscale == sprite_height_end && x == destination_x && y == destination_y && no_loop == false)
{
    alarm[0] = 2;
    no_loop = true;
}
