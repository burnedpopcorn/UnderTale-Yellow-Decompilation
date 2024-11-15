if (live_call())
    return global.live_result;

switch (scene)
{
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        vspeed = -2;
        
        if (y <= ystart)
        {
            y = ystart;
            vspeed = 0;
            cutscene_advance();
            
            if (!audio_is_playing(snd_undertale_impact))
                audio_play_sound(snd_undertale_impact, 1, 0);
        }
        
        break;
    
    case 3:
        if (global.route != 3)
            exit;
        
        cutscene_wait(2);
        break;
    
    case 4:
        sprite_index = open_sprite;
        image_speed = 2;
        image_index = 0;
        cutscene_advance();
        break;
    
    case 5:
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            cutscene_advance();
        }
        
        break;
    
    case 6:
        cutscene_wait(1.5);
        break;
    
    case 7:
        if (instance_exists(self_soul) && floor(self_soul.image_index) == 0)
        {
            self_soul.image_speed = 0;
            self_soul.sprite_index = spr_geno_soul_idle;
            self_soul.y -= 16;
            self_soul.track_spawner = false;
            cutscene_advance();
        }
        
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        if (instance_exists(self_soul))
        {
            with (self_soul)
            {
                if (y < (ystart - 70))
                {
                    vspeed = lerp(vspeed, 0, 0.2);
                    
                    if (vspeed > -0.01)
                    {
                        other.scene++;
                        vspeed = 0;
                        idle_animation = true;
                    }
                }
                else if (vspeed > -0.5)
                {
                    vspeed -= 0.05;
                }
            }
        }
        
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        if (y < (ystart + 30))
        {
            if (vspeed < 1)
                vspeed += 0.05;
        }
        else
        {
            sprite_index = spr_container_submerge;
            image_index = 0;
            image_speed = 1;
            vspeed = 0;
            y = ystart;
            cutscene_advance();
        }
        
        break;
    
    case 12:
        if (image_index >= (image_number - 1))
        {
            instance_destroy();
            exit;
        }
        
        break;
}
