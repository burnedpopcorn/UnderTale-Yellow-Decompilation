damage_number = scr_determine_damage_number_enemy("sweet corn a", "sweet corn b", "sweet corn c");
image_speed = 0.8;
image_index = 0;

if (!audio_is_playing(snd_undertale_spearrise))
    audio_play_sound(snd_undertale_spearrise, 1, 0);
