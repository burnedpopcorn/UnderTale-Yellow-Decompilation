var play_sound;

image_speed = 1;
active = false;
play_sound = true;

with (obj_flowey_world_stalagmites)
{
    if (sound_playing == true)
        play_sound = false;
}

if (play_sound == true)
{
    audio_play_sound(snd_undertale_spearrise, 1, 0);
    sound_playing = true;
}

alarm[2] = 5;
