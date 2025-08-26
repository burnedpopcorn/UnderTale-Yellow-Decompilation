if (live_call())
    return global.live_result;

if (instance_exists(obj_battle_enemy_attack_parent))
{
    with (obj_battle_enemy_attack_parent)
    {
        image_alpha -= 0.3;
        
        if (image_alpha <= 0)
            instance_destroy();
    }
}

switch (scene)
{
    case 0:
        image_xscale += 0.1;
        image_yscale = image_xscale;
        
        if (image_xscale >= 1.5)
        {
            image_xscale = 1.5;
            image_yscale = 1.5;
            image_alpha = 1;
            scene++;
        }
        
        image_alpha = image_xscale / 1.5;
        break;
    
    case 1:
        image_xscale -= 0.1;
        image_yscale = image_xscale;
        
        if (image_xscale <= 1)
        {
            image_xscale = 1;
            image_yscale = 1;
            scr_screenshake_battle(6, 3);
            
            with (obj_flowey_battle_gray_wheel_petal_gray)
                active = true;
            
            scene++;
        }
        
        break;
    
    case 2:
        if (!instance_exists(obj_flowey_battle_gray_vine_for_grab))
        {
            audio_play_sound(snd_undertale_spearrise, 1, 0);
            instance_create_depth(-10, obj_heart_battle_fighting_parent.y, -100, obj_flowey_battle_gray_vine_for_grab);
            
            with (instance_create_depth(650, obj_heart_battle_fighting_parent.y, -100, obj_flowey_battle_gray_vine_for_grab))
            {
                image_xscale = -1;
                hspeed *= -1;
            }
        }
        
        scene++;
        break;
    
    case 3:
        break;
    
    case 4:
        for (var i = 0; i < 6; i++)
        {
            if (obj_flowey_battle_final.petal_alive[i])
            {
                var petal = instance_create_depth(x, y, depth + 1, obj_flowey_battle_gray_wheel_petals_special);
                petal.sprite_index = petal_sprite_special[i];
                petal.direction = i * 60;
                petal.petal_phase_number = i + 1;
            }
        }
        
        scene++;
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_sfx_play(snd_f_whatwouldyoulike, 1);
        break;
    
    case 7:
        if (!alarm[0])
            alarm[0] = 30;
        
        if (spin_speed < spin_speed_max)
            spin_speed += 0.5;
        
        var shake_modifier = spin_speed / spin_speed_max;
        x = xstart;
        y = ystart;
        x += (choose(-1, 1) * shake_modifier);
        y += (choose(-1, 1) * shake_modifier);
        
        with (obj_flowey_battle_gray_wheel_petals_special)
            direction += other.spin_speed;
        
        break;
    
    case 8:
        if (spin_speed > 0)
        {
            spin_speed -= 0.5;
        }
        else
        {
            x = xstart;
            y = ystart;
            scene++;
            exit;
        }
        
        with (obj_flowey_battle_gray_wheel_petals_special)
            direction += other.spin_speed;
        
        var shake_modifier = spin_speed / spin_speed_max;
        x = xstart;
        y = ystart;
        x += (choose(-1, 1) * shake_modifier);
        y += (choose(-1, 1) * shake_modifier);
        break;
    
    case 9:
        audio_play_sound(snd_f_great, 1, 0);
        scene++;
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        obj_flowey_battle_final.stage_switch = wheel_phase_number;
        scene++;
        break;
}
