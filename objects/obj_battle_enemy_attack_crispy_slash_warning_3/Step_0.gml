counter += image_speed;

switch (counter)
{
    case 1.6:
    case 2.8:
    case 4:
        audio_play_sound(snd_bullet_warning, 20, 0);
        break;
}
