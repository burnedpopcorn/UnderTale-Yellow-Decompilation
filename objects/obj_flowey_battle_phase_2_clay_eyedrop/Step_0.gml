if (live_call())
    return global.live_result;

if (x < (0 - sprite_width) || x > (room_width + sprite_width))
    instance_destroy();

switch (step)
{
    case 0:
        if (image_alpha < 1)
        {
            image_alpha += 0.02;
        }
        else
        {
            if (x < (room_width / 2))
                rot_dir = 1;
            else
                rot_dir = -1;
            
            step++;
        }
        
        break;
    
    case 1:
        if (x < -100 || x > (room_width + 100))
            instance_destroy();
        
        image_speed = 2;
        image_angle += (5 * rot_dir);
        yspd += grav;
        
        if (place_meeting(x, y + yspd, obj_flowey_battle_phase_2_clay_floor))
        {
            while (!place_meeting(x, y + sign(yspd), obj_flowey_battle_phase_2_clay_floor))
                y += sign(yspd);
            
            yspd *= -bounce_percent;
            xspd = 10;
        }
        
        x -= (xspd * rot_dir);
        y += yspd;
        xspd *= 0.95;
        break;
}
