image_angle = direction;

if (can_move == true)
{
    speed = max_speed;
    
    switch (1)
    {
        case global.left_keyp:
            direction = 180;
            break;
        
        case global.up_keyp:
            direction = 90;
            break;
        
        case global.right_keyp:
            direction = 0;
            break;
        
        case global.down_keyp:
            direction = 270;
            break;
    }
}

if (image_xscale > 1.5 && anim_grow == 1)
    anim_grow = -1;
else if (image_xscale < 1 && anim_grow == -1)
    anim_grow = 1;

image_xscale += (0.05 * anim_grow);
image_yscale = image_xscale;
