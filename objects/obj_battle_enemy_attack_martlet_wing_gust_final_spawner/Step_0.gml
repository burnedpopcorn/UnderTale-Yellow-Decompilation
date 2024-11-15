var particles_spawn, flap_sound, inc, i, xx, yy;

if (live_call())
    return global.live_result;

particles_spawn = false;
item_offset = 15;

switch (scene)
{
    case 0:
        with (obj_martlet_final_base)
        {
            image_angle = 0;
            y = lerp(y, other.y_target, 0.25);
            x = lerp(x, other.x_target, 0.25);
            
            if (abs(y - other.y_target) < 1 && abs(x - other.x_target) < 1)
            {
                x = other.x_target;
                y = other.y_target;
                other.scene++;
                image_speed = 1;
            }
        }
        
        break;
    
    case 1:
        if (flap_noloop == false)
        {
            if (obj_martlet_final_base.image_index >= 2)
            {
                particles_spawn = true;
                flap_sound = audio_play_sound(snd_mart_flap, 20, 0);
                audio_sound_pitch(flap_sound, 0.8);
                flap_noloop = true;
            }
        }
        else if (obj_martlet_final_base.image_index < 2)
        {
            flap_noloop = false;
        }
        
        attack_duration--;
        
        if (attack_duration <= 0)
        {
            alarm[0] = 0;
            audio_stop_sound(snd_mart_flap);
            scene++;
        }
        
        break;
    
    case 2:
        with (obj_martlet_final_base)
        {
            y = lerp(y, other.y_original, 0.25);
            x = lerp(x, other.x_original, 0.25);
            
            if (abs(y - other.y_original) < 1 && abs(x - other.x_original) < 1)
            {
                x = other.x_original;
                y = other.y_original;
                martlet_sprites_reset = true;
                instance_destroy(other);
            }
        }
        
        break;
}

if (floor(obj_martlet_final_base.image_index) >= 3 && floor(obj_martlet_final_base.image_index) <= 6)
{
    with (obj_heart_battle_fighting_parent)
        vsp_factor = 11;
}
else
{
    with (obj_heart_battle_fighting_parent)
        vsp_factor = 0;
}

if (particles_spawn)
{
    inc = 22.857142857142858;
    
    for (i = 0; i < 7; i++)
    {
        xx = 250 + (i * inc);
        yy = 270 + (sign(i % 2) * 20) + random_range(-10, 10);
        part_particles_create(global.ps, xx, yy, global.pt_Effect1, 1);
        part_particles_create(global.ps, xx, (yy - 60) + random_range(-10, 10), global.pt_Effect1, 1);
    }
}
