if (live_call())
    return global.live_result;

if (noloop == false && image_index >= 4)
{
    audio_play_sound(snd_undertale_explosion, 1, 0);
    instance_create_depth(x, y, -100, obj_battle_enemy_attack_martlet_beams);
    scr_screenshake_battle_custom(3, 1);
    noloop = true;
}
