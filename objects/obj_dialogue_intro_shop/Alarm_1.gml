if (global.sworks_flag[26] < 2)
{
    audio_play_sound(snd_fail, 1, 0);
    portrait[1] = 373;
}
else
{
    audio_play_sound(snd_factory_puzzle_spawn_item, 1, 0);
    portrait[1] = 131;
}

alarm[0] = 30;
