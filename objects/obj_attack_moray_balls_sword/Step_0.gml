var target_y, grav, fall_speed_max, battle_box, y_max;

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
        target_y = ystart - 50;
        
        if (y > (target_y + 0.01))
        {
            y = lerp(y, target_y, 0.4);
        }
        else
        {
            audio_play_sound(snd_undertale_swoosh, 1, 0);
            attack_state++;
        }
        
        break;
    
    case 2:
        grav = 2;
        fall_speed_max = 30;
        battle_box = 3154;
        y_max = battle_box.bbox_bottom - 4;
        
        if ((bbox_bottom + fall_speed_max) >= y_max)
        {
            vspeed = 0;
            y = y_max;
            attack_state = -1;
            scr_screenshake_battle(10, 1);
            audio_play_sound(snd_feisty_moray_stab_impact, 1, 0);
        }
        else
        {
            vspeed = clamp(vspeed + grav, 0, fall_speed_max);
        }
        
        break;
}
