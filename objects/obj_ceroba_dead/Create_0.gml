var red_tint;

image_alpha = 0;
image_speed = 0;
image_index = image_number - 1;
alarm[0] = 1;

if (!audio_is_playing(snd_monster_damage_death))
    audio_play_sound(snd_monster_damage_death, 20, 0);

red_tint = make_colour_rgb(215, 166, 166);
image_blend = red_tint;
