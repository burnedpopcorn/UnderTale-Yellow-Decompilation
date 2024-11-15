if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (cutscene_wait(0.5))
        {
            audio_play_sound(snd_undertale_spearrise, 1, 0);
            vspeed = -24;
        }
        
        break;
    
    case 1:
        if (y <= (480 - (sprite_height - speed)))
        {
            x_last = x;
            y_last = y;
            scene++;
        }
        
        break;
    
    case 2:
        speed = 0;
        x = x_last + random_range(-2, 2);
        y = y_last + random_range(-2, 2);
        cutscene_wait(0.3);
        break;
    
    case 3:
        vspeed += 3;
        
        if (y > 480)
            instance_destroy();
        
        break;
}
