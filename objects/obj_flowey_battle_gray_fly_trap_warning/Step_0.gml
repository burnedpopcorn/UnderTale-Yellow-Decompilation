counter += image_speed;

if (can_play_sound)
{
    switch (counter)
    {
        case 3.2:
        case 5.6:
        case 8:
            audio_play_sound(snd_bullet_warning, 20, 0);
            break;
    }
}
