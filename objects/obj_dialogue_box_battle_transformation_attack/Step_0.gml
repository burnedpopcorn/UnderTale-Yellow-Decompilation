var sprite_width_multiplier, sprite_height_multiplier;

if (transform_type == "in")
{
    if (no_loop_transform == false)
    {
        sprite_width_end = sprite_width_destination / sprite_width;
        sprite_height_end = sprite_height_destination / sprite_height;
        sprite_width_multiplier = abs(image_xscale - sprite_width_end);
        sprite_height_multiplier = abs(image_yscale - sprite_height_end);
        
        if (sprite_width_end > image_xscale)
            width_increase_type = 1;
        else
            width_increase_type = 0;
        
        if (sprite_height_end > image_yscale)
            height_increase_type = 1;
        else
            height_increase_type = 0;
        
        max_frames = max_frames_default;
        sprite_width_increase = sprite_width_multiplier / max_frames;
        sprite_height_increase = sprite_height_multiplier / max_frames;
        transform_direction = 2;
        no_loop_transform = true;
    }
    
    if (transform_direction == 0 || transform_direction == 2)
    {
        if (width_increase_type == 0)
        {
            if (image_xscale > sprite_width_end)
            {
                image_xscale -= sprite_width_increase;
                
                if (image_xscale < sprite_width_end)
                    image_xscale = sprite_width_end;
            }
        }
        else if (width_increase_type == 1)
        {
            if (image_xscale < sprite_width_end)
            {
                image_xscale += sprite_width_increase;
                
                if (image_xscale > sprite_width_end)
                    image_xscale = sprite_width_end;
            }
        }
        
        if (image_xscale == sprite_width_end && transform_direction != 2)
            transform_direction = 1;
    }
    
    if (transform_direction == 1 || transform_direction == 2)
    {
        if (height_increase_type == 0)
        {
            if (image_yscale > sprite_height_end)
            {
                image_yscale -= sprite_height_increase;
                
                if (image_yscale < sprite_height_end)
                    image_yscale = sprite_height_end;
            }
        }
        else if (height_increase_type == 1)
        {
            if (image_yscale < sprite_height_end)
            {
                image_yscale += sprite_height_increase;
                
                if (image_yscale > sprite_height_end)
                    image_yscale = sprite_height_end;
            }
        }
        
        if (image_yscale == sprite_height_end && transform_direction != 2)
            transform_direction = 0;
    }
}

if (transform_type == "out")
{
    if (no_loop_transform == false)
    {
        sprite_width_end = spr_steamworks_21_background;
        sprite_height_end = spr_steamworks_21_background;
        sprite_width_multiplier = abs(1 - image_xscale);
        sprite_height_multiplier = abs(1 - image_yscale);
        
        if (image_xscale > 1)
            width_increase_type = 1;
        else
            width_increase_type = 0;
        
        if (image_yscale > 1)
            height_increase_type = 1;
        else
            height_increase_type = 0;
        
        max_frames = max_frames_default;
        sprite_width_increase = sprite_width_multiplier / max_frames;
        sprite_height_increase = sprite_height_multiplier / max_frames;
        transform_direction = 1;
        no_loop_transform = true;
    }
    
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
        
        if (image_xscale == sprite_width_end && transform_direction != 2)
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
        
        if (image_yscale == sprite_height_end && transform_direction != 2)
            transform_direction = 0;
    }
}

if (transform_type != "nothing")
{
    if (image_xscale == sprite_width_end && image_yscale == sprite_height_end)
    {
        if (transform_type == "out")
        {
            with (obj_dialogue_box_battle)
                image_alpha = 1;
            
            instance_destroy();
            exit;
        }
        
        transform_type = "nothing";
        no_loop_transform = false;
    }
}
