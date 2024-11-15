if (hp_self > 0)
{
    instance_destroy(other);
    audio_play_sound(snd_arc_hit, 1, 0);
    hit_flash = true;
    hp_self -= 1;
    alarm[0] = 3;
}

shake_strength = 4;
