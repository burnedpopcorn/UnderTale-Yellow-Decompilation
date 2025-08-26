if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_alpha += 0.2;
        image_angle = (direction - 180) + (180 * image_alpha);
        
        if (image_alpha >= 1)
            scene++;
        
        break;
    
    case 1:
        cutscene_wait(0.15);
        break;
    
    case 2:
        image_speed = 1;
        audio_play_sound(snd_arc_shoot, 1, 0);
        var bullet = instance_create_depth(x, y, -100, obj_battle_enemy_attack_axis_turret_bullet);
        bullet.direction = direction;
        bullet.image_angle = bullet.direction;
        bullet.speed = 8;
        speed = -3;
        shot_number--;
        scene++;
        break;
    
    case 3:
        if (cutscene_wait(0.15))
        {
            if (shot_number > 0)
                scene = 2;
            else
                scene = 4;
        }
        
        break;
    
    case 4:
        image_alpha -= 0.1;
        
        if (image_alpha <= 0)
            instance_destroy();
        
        break;
}

speed = lerp(speed, 0, 0.2);
