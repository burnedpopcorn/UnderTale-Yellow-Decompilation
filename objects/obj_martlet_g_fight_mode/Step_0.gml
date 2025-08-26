if (image_index >= 5 && sound_looper == 0)
{
    audio_play_sound(snd_martlet_yeets_a_book, 20, 0);
    sound_looper += 1;
}
else if (image_index >= 12 && sound_looper == 1)
{
    audio_play_sound(snd_martlet_takes_a_stance, 20, 0);
    sound_looper += 1;
}
