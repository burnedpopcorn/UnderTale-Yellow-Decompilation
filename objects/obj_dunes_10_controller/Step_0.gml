var screenshake, pebble_number, x_gap, i;

if (irandom(random_odd) == 1 && !instance_exists(obj_dunes_10_pebbles_fall))
{
    rumble_sound = audio_play_sound(snd_rock_roll, 1, 0);
    screenshake = instance_create(obj_pl.x, obj_pl.y, obj_screenshake_player);
    
    with (screenshake)
    {
        alarm[0] = 30;
        intensity = 1;
    }
    
    fall = true;
    random_odd = 800;
}
else if (random_odd > 10)
{
    random_odd -= 2;
}
else
{
    random_odd = 10;
}

if (fall == true)
{
    pebble_number = irandom_range(6, 12);
    x_gap = 600 / pebble_number;
    
    for (i = 0; i < pebble_number; i++)
        instance_create(0 + (x_gap * i) + irandom_range(-120, 60), irandom_range(-60, obj_quote_battle_feisty_four_t5_moray), obj_dunes_10_pebbles_fall);
    
    fall = false;
}

if (audio_is_playing(rumble_sound))
{
    if (audio_sound_get_track_position(rumble_sound) > 1)
        audio_stop_sound(rumble_sound);
}
