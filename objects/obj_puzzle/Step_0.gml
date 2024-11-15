if (buttons == maxbuttons)
    solved = 1;

if (solved == 1)
{
    audio_play_sound(snd_success, 1, 0);
    
    with (obj_spikes)
        swit = true;
    
    solved = 2;
}
