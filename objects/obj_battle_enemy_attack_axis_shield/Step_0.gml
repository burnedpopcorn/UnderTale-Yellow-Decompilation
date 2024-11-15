var impact_sound;

if (shield_hit == true)
{
    impact_sound = audio_play_sound(snd_axis_trash_can_hit, 1, 0);
    audio_sound_pitch(impact_sound, random_range(0.7, 1.3));
    shield_offset = shield_offset_min;
    shield_hit = false;
}

shield_offset = lerp(shield_offset, shield_offset_max, 0.1);

if (black_overlay_alpha < 1)
    black_overlay_alpha += 0.05;
