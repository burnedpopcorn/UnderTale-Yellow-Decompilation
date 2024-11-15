if (image_alpha < 1)
{
    image_alpha += 0.2;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        
        if (can_jump == false)
        {
            vspeed = -4;
            hspeed = hsp;
            gravity = 0.5;
            can_jump = true;
        }
    }
}

if (vspeed > 5)
    vspeed = 5;

if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 3))
{
    if (bounce_count > 0)
    {
        bounce_count -= 1;
        vspeed = -6;
        hspeed *= 0.35;
        alarm[0] = 1;
    }
}

image_angle += (3 * sign(320 - x));
