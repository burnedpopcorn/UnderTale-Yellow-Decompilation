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

image_angle += (3 * sign(320 - x));
