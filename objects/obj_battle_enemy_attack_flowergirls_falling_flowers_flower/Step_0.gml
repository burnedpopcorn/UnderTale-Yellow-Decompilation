if (image_alpha < 1)
{
    image_alpha += 0.2;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        
        if (can_jump == false)
        {
            vspeed = -8;
            hspeed = hsp;
            gravity = 0.5;
            can_jump = true;
        }
    }
}

if (vspeed > 8)
    vspeed = 8;

if ((bbox_bottom + vspeed) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 8))
{
    if (bounce_count > 0)
    {
        bounce_count -= 1;
        vspeed = -vspeed * 0.5;
        hspeed *= 0.5;
    }
    else
    {
        hspeed = 0;
        vspeed = 0;
        gravity = 0;
    }
}
