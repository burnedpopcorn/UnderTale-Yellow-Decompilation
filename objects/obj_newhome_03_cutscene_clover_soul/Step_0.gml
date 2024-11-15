if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_xscale += 0.15;
        
        if (image_xscale >= 1.5)
        {
            image_xscale = 1.5;
            flash_alpha = 1;
            instance_create_depth(x, y, depth - 1, obj_newhome_03_cutscene_clover_soul_effect);
            scene++;
        }
        
        image_yscale = image_xscale;
        break;
    
    case 1:
        image_xscale = lerp(image_xscale, 1, 0.15);
        
        if (image_xscale <= 1)
        {
            image_xscale = 1;
            scene++;
        }
        
        image_yscale = image_xscale;
        break;
    
    case 2:
        if (cutscene_wait(1))
        {
            if (instance_exists(obj_newhome_03_cutscene_postfight_spare))
                obj_newhome_03_cutscene_postfight_spare.scene += 1;
        }
        
        break;
    
    case 3:
        sin_deg += sin_deg_inc;
        
        if (sin_deg >= 360)
            sin_deg -= 360;
        
        y = ystart + (sin(degtorad(sin_deg)) * 2);
        break;
    
    case 4:
        y = lerp(y, 272, 0.05);
        
        if (abs(y - 272) < 0.5)
        {
            y = 272;
            cutscene_advance();
        }
        
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        if (!alarm[0])
            alarm[0] = 1;
        
        if (absorb_effect_count <= 0)
            cutscene_advance();
        
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        obj_newhome_03_cutscene_clover_soul_capsule.flash_alpha = 1;
        obj_newhome_03_cutscene_clover_soul_capsule.image_index = 1;
        obj_newhome_03_cutscene_postfight_spare.scene++;
        audio_play_sound(snd_undertale_flash, 1, 0);
        instance_destroy();
        break;
}

if (flash_alpha > 0.1)
    flash_alpha = lerp(flash_alpha, 0, 0.2);
else
    flash_alpha = 0;
