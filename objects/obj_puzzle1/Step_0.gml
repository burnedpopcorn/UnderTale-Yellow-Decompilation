if (turn == 3)
{
    audio_play_sound(snd_success, 1, 0);
    global.flag[1] = true;
    turn++;
}

if (turn == 4 || global.flag[1] == true)
    done = true;
