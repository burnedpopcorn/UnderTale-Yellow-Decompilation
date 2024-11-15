if (image_blend != c_red)
{
    audio_play_sound(snd_bullet_warning, 1, 0);
    image_blend = c_red;
    alarm[0] = 2;
}
else
{
    image_blend = c_white;
    alarm[1] = 15;
    audio_play_sound(snd_ceroba_swoosh, 1, 0);
}
