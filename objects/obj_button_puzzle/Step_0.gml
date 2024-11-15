if (image_index == 0 && place_meeting(x, y, obj_pl))
{
    image_index = 1;
    audio_play_sound(snd_switch, 10, 0);
    global.snowdin_flag[11] = 1;
}
