switch (attack_flower_stage)
{
    case 0:
        if (image_xscale < 1 || image_yscale < 1)
        {
            image_xscale += 0.1;
            image_yscale += 0.1;
        }
        else
        {
            attack_flower_stage += 1;
        }
        
        break;
    
    case 1:
        image_blend = c_white;
        
        if (attack_flower_timer < attack_flower_timer_max)
        {
            attack_flower_timer++;
        }
        else
        {
            image_blend = c_red;
            audio_play_sound(snd_bullet_warning, 1, 0);
            attack_flower_timer = 0;
            attack_flower_beep_count -= 1;
            
            if (attack_flower_beep_count <= 0)
                attack_flower_stage += 1;
        }
        
        break;
    
    case 2:
        instance_destroy();
        
        with (instance_create(x, y, obj_battle_enemy_attack_ceroba_opener_explosion))
            ring_object = other.ring_object;
        
        break;
}
