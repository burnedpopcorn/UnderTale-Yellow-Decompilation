switch (attack_state)
{
    case 0:
        if (image_alpha < 0.99)
        {
            image_alpha = lerp(image_alpha, 1, 0.25);
        }
        else
        {
            image_alpha = 1;
            attack_state++;
        }
        
        break;
    
    case 1:
        var target_x = xstart - 50;
        
        if (x > (target_x + 0.01))
        {
            x = lerp(x, target_x, 0.4);
        }
        else
        {
            audio_play_sound(snd_undertale_swoosh, 1, 0);
            attack_state++;
        }
        
        break;
    
    case 2:
        var grav = 2;
        var fall_speed_max = 30;
        var battle_box = obj_dialogue_box_battle_transformation_any;
        var x_max = battle_box.bbox_right - 4;
        
        if ((bbox_right + fall_speed_max) >= x_max)
        {
            hspeed = 0;
            x = x_max;
            attack_state = -1;
            scr_screenshake_battle(10, 1);
            audio_play_sound(snd_feisty_moray_stab_impact, 1, 0);
        }
        else
        {
            hspeed = clamp(hspeed + grav, 0, fall_speed_max);
        }
        
        break;
}
