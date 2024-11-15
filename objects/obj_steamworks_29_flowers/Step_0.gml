if (image_index == 0)
{
    if (place_meeting(x, y, obj_pl))
    {
        image_index = 1;
        audio_play_sound(snd_guardener_step_on_flowers, 1, 0);
    }
}
