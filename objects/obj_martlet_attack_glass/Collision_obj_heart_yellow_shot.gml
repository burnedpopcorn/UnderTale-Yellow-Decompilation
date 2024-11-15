if (live_call())
    return global.live_result;

if (!other.alarm[0])
{
    other.alarm[0] = 2;
    audio_play_sound(snd_pickaxe_ding2, 1, 0);
    bullet_hit_overlay = 1;
}
