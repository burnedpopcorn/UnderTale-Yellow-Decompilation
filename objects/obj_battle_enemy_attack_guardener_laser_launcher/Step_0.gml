if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        instance_create_depth(320, 320, obj_heart_battle_fighting_parent.depth - 1, obj_attack_guardener_laser_warning);
        cutscene_advance();
        break;
    
    case 1:
        if (image_alpha < 1)
            image_alpha += 0.2;
        else
            cutscene_advance();
        
        break;
    
    case 2:
        var y_target = obj_dialogue_box_battle_transformation_any.y;
        
        if (abs(y - y_target) > 1)
        {
            y = lerp(y, y_target, 0.1);
        }
        else
        {
            y = obj_dialogue_box_battle_transformation_any.y;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        if (warning_line_alpha < 0.96)
        {
            warning_line_alpha = lerp(warning_line_alpha, 1, 0.1);
        }
        else
        {
            cutscene_advance();
            warning_line_alpha = 1;
        }
        
        break;
    
    case 4:
        for (var i = 0; i < 8; i++)
        {
            var new_dir = image_angle + (i * 45);
            var xx = x;
            var yy = y;
            var new_laser = instance_create_depth(xx, yy, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_guardener_laser);
            new_laser.direction = new_dir;
        }
        
        warning_line_alpha = 0;
        audio_play_sound(snd_guardener_laser_shoot, 1, 0);
        audio_play_sound(snd_guardener_laser_shoot_loop, 1, 1);
        cutscene_advance();
        break;
    
    case 5:
        var turn_speed_inc = 0.25;
        
        if (turn_speed < turn_speed_max)
            turn_speed += turn_speed_inc;
        else
            cutscene_advance();
        
        break;
    
    case 6:
        if (cutscene_wait(3))
            audio_play_sound(snd_bullet_warning, 1, 0);
        
        break;
    
    case 7:
        var turn_speed_inc = 0.25;
        
        if (turn_speed > -turn_speed_max)
            turn_speed -= turn_speed_inc;
        else
            cutscene_advance();
        
        break;
    
    case 8:
        cutscene_wait(3);
        break;
    
    case 9:
        instance_destroy();
        break;
}

image_angle += turn_speed;
