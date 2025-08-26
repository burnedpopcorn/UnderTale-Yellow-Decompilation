bell_attack_current_swing_degree += 6;

if (bell_attack_current_swing_degree >= 360)
    bell_attack_current_swing_degree -= 360;

var sinpos = dsin(bell_attack_current_swing_degree);
bell_attack_current_swing_angle = sinpos * bell_attack_max_swing_angle;
image_angle = 0 + bell_attack_current_swing_angle;

if (image_alpha < 1)
    exit;

if (sinpos >= 0.95 && bell_swing_noloop != 1)
{
    instance_create(x, bbox_bottom + 10, obj_battle_enemy_attack_starlo_bell_wave_blue);
    var snd = audio_play_sound(snd_big_bell_ring, 1, 0);
    audio_sound_pitch(snd, 1.1);
    bell_swing_noloop = 1;
}
else if (sinpos <= -0.95 && bell_swing_noloop != -1)
{
    instance_create(x, bbox_bottom + 10, obj_battle_enemy_attack_starlo_bell_wave_orange);
    var snd = audio_play_sound(snd_big_bell_ring, 1, 0);
    audio_sound_pitch(snd, 0.9);
    bell_swing_noloop = -1;
}
