if (global.sworks_flag[29] >= 3 || global.dunes_flag[51] == 2)
{
    instance_destroy();
    exit;
}

waiter = 0;
audio_play_sound(snd_pellet_pile_spawn, 1, 0);
