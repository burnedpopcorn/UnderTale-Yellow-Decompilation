counter += image_speed;

switch (counter)
{
    case 1.2:
    case 3:
    case 4.8:
    case 6.6:
        audio_play_sound(snd_bullet_warning, 20, 0);
        break;
}
