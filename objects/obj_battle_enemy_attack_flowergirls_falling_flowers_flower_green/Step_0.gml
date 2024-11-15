if (image_alpha < 1)
{
    image_alpha += 0.2;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        
        if (can_jump == false && !alarm[0])
            alarm[0] = 30;
    }
}

if (vspeed > 6)
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
        y = obj_dialogue_box_battle_transformation_any.bbox_bottom;
        hspeed = 0;
        vspeed = 0;
        gravity = 0;
    }
}
