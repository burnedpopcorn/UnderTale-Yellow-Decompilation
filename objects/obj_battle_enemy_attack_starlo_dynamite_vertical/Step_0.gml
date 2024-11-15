if (image_alpha < 1)
{
    image_alpha += 0.25;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        
        if (can_jump == false)
        {
            gravity = 0.5;
            can_jump = true;
        }
    }
}

if (vspeed > 5)
    vspeed = 5;

if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 8))
{
    if (bounce_count > 0)
    {
        bounce_count -= 1;
        vspeed = -5.5;
        alarm[0] = 1;
    }
}

if (bounce_count == 0)
    image_angle += (5 * sign(320 - x));
