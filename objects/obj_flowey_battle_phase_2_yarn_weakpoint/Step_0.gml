if (live_call())
    return global.live_result;

if (hp_self <= 0)
{
    if (sprite_index != spr_battle_flowey_mechanical_drone_explode)
    {
        sprite_index = spr_battle_flowey_mechanical_drone_explode;
        image_index = 0;
        audio_play_sound(snd_badexplosion, 1, 0);
    }
    else if (image_index >= (image_number - 1))
    {
        instance_destroy();
    }
}

sin_deg += speed_self;

if (sin_deg > 360)
    sin_deg -= 360;

y = ystart + (y_variation * sin(degtorad(sin_deg)));
event_inherited();
