if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        var heart = obj_heart_battle_fighting_parent;
        attack_target_x = heart.x;
        attack_target_y = heart.y;
        
        if (!fade_out)
        {
            if (image_alpha < 1)
                image_alpha += 0.1;
            else if (!alarm[0])
                alarm[0] = 30;
        }
        else if (image_alpha > 0)
        {
            image_alpha -= 0.1;
        }
        else
        {
            instance_destroy();
        }
        
        image_xscale = lerp(image_xscale, 1, 0.15);
        image_yscale = image_xscale;
        
        if (can_track == true)
        {
            x = attack_target_x + lengthdir_x(attack_distance, attack_dir);
            y = attack_target_y + lengthdir_y(attack_distance, attack_dir);
            image_angle = point_direction(x, y, attack_target_x, attack_target_y);
        }
        
        if (image_alpha < 1 && can_move == false)
        {
            image_alpha += 0.2;
            
            if (image_alpha > 1)
                image_alpha = 1;
        }
        
        if (attack_dir < 360)
            attack_dir += bullet_speed;
        else
            attack_dir = bullet_speed;
        
        break;
    
    case 1:
        image_speed = 1;
        var shootsnd = audio_play_sound(snd_arc_shoot, 1, 0);
        audio_sound_gain(shootsnd, 0.3, 0);
        var bullet = instance_create_depth(x, y, depth + 1, obj_battle_enemy_attack_axis_turret_bullet_geno);
        bullet.direction = image_angle;
        bullet.image_angle = bullet.direction;
        bullet.speed = 11;
        direction = image_angle;
        speed = -5;
        shot_number--;
        scene++;
        break;
    
    case 2:
        if (cutscene_wait(0.12))
        {
            if (shot_number > 0)
                scene = 1;
            else
                scene = 3;
        }
        
        break;
    
    case 3:
        image_alpha -= 0.2;
        
        if (image_alpha <= 0)
            instance_destroy();
        
        break;
}

if (image_xscale > 1.01)
    image_xscale = lerp(image_xscale, 1, 0.15);
else
    image_xscale = 1;

image_yscale = image_xscale;
