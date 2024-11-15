event_inherited();

if (sprite_index == spr_martlet_hammer && (image_index + image_speed) >= (image_number - 1))
{
    if (!audio_is_playing(snd_hammer_hit))
        audio_play_sound(snd_hammer_hit, 1, 0);
}

depth = -room_height;
