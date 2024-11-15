if (puzzlecount == 5)
{
    global.flag[2] = true;
    audio_play_sound(snd_success, 1, 0);
    puzzlecount++;
}

if (global.flag[2] == true)
    obj_spikes.image_index = 1;
