counter += image_speed;

switch (counter)
{
    case 3.2:
    case 5.6:
    case 8:
        audio_play_sound(snd_bullet_warning, 20, 0);
        break;
}
