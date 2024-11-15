x = obj_pl.x - 4;
y = obj_pl.y - 26;

if (floor(image_index) == 8)
{
    if (!audio_is_playing(snd_hurt))
        audio_play_sound(snd_hurt, 1, 0);
}
