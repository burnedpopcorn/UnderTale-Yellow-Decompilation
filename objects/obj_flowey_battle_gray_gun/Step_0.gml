if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_alpha += 0.2;
        image_angle = (direction - 180) + (180 * image_alpha);
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            scene++;
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        audio_play_sound(snd_impact_gunshot, 1, 0);
        var len = point_distance(0, 0, 55, -12);
        var pointdir = point_direction(0, 0, 55, -12);
        var bullet = instance_create_depth(x + lengthdir_x(len, image_angle + (pointdir * sign(image_yscale))), y + lengthdir_y(len, image_angle + (pointdir * sign(image_yscale))), depth - 1, obj_flowey_battle_gray_bullet);
        bullet.direction = direction;
        bullet.image_angle = direction;
        speed = -24;
        gravity = 0.25;
        scene++;
        break;
    
    case 3:
        image_angle += (25 * image_yscale);
        image_alpha -= 0.1;
        
        if (image_alpha < 0)
            instance_destroy();
        
        break;
}
