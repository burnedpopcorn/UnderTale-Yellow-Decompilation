if (card_draw_warning_rectangle == false)
{
    if (!audio_is_playing(snd_bullet_warning))
        audio_play_sound(snd_bullet_warning, 1, 0);
    
    card_draw_warning_rectangle = true;
}
else
{
    card_draw_warning_rectangle = false;
}

if (card_warning_number < card_warning_max)
{
    card_warning_number++;
    alarm[0] = 4;
}
else
{
    alarm[1] = activation_delay;
    card_warning_number = 0;
}
