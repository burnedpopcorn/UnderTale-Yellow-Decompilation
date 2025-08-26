if (live_call())
    return global.live_result;

charge_percentage = charge_time / charge_time_max;

if (is_charging)
{
    if (!audio_is_playing(snd_chargeshot_charge) && !is_charged)
    {
        charge_sound = audio_play_sound(snd_chargeshot_charge, 1, 1);
        audio_sound_gain(charge_sound, 0.8, 0);
        audio_sound_pitch(charge_sound, 0.5);
    }
    
    if (charge_time > 0)
    {
        charge_time -= 1;
    }
    else if (!is_charged)
    {
        var ready_sound = audio_play_sound(snd_undertale_flash, 1, 0);
        audio_sound_gain(ready_sound, 0.5, 0);
        is_charged = true;
        sprite_index = spr_heart_yellow_ready;
        image_index = 0;
        image_speed = 1;
    }
}
else
{
    audio_stop_sound(charge_sound);
}

if ((can_shoot && keyboard_multicheck_pressed(vk_nokey)) || auto_shoot)
{
    alarm[0] = -1;
    draw_hint = false;
    can_shoot = false;
    auto_shoot = false;
    
    if (is_charging == true)
    {
        is_charging = false;
        charge_time = charge_time_max;
        sprite_index = spr_heart_yellow_up;
        image_index = 0;
        image_speed = 0;
        
        if (is_charged == true)
        {
            instance_create_depth(x + 0.5, y - 6, -10000, obj_heart_yellow_shot_big);
            is_charged = false;
            sprite_index = spr_heart_yellow_shoot;
            image_index = 0;
            image_speed = 1;
        }
    }
}

if (audio_is_playing(charge_sound))
{
    var pitch_original = audio_sound_get_pitch(charge_sound);
    
    if (pitch_original < 0.99)
        audio_sound_pitch(charge_sound, 1 - (0.5 * charge_percentage));
    else
        audio_sound_pitch(charge_sound, 1);
}

if (!draw_hint)
{
    if (can_shoot && !alarm[0])
        alarm[0] = 60;
}
else if (hint_alpha < 1)
{
    hint_alpha += 0.1;
}
