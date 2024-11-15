event_inherited();

if (global.geno_complete[2])
{
    sprite_index = spr_micro_hotspring_nofroggits;
    exit;
}

image_speed = 0.5;
audio_play_sound(snd_microsprings_froggits, 1, 1);
