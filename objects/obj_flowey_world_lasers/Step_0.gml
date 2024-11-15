if (lasers_activate)
{
    if (image_alpha < 1)
        image_alpha += 0.2;
    
    if (activate_delay > 0)
    {
        activate_delay -= 1;
    }
    else
    {
        audio_stop_sound(snd_switch);
        audio_play_sound(snd_switch, 1, 0);
        
        if (sprite_index != spr_hotland_lasers_on)
        {
            sprite_index = spr_hotland_lasers_on;
            image_index = 2;
        }
        else
        {
            sprite_index = spr_hotland_lasers_off;
        }
        
        activate_delay = activate_delay_max;
        activate_count -= 1;
    }
    
    if (activate_count <= 0)
    {
        audio_stop_sound(snd_switch);
        audio_play_sound(snd_switch, 1, 0);
        lasers_active = true;
        lasers_activate = false;
    }
}

if (lasers_active == true)
{
    if (image_speed != 1)
    {
        sprite_index = spr_hotland_lasers_on;
        image_index = 0;
        image_speed = 1;
    }
}
