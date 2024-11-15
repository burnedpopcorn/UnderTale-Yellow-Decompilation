var break_sound, i, debris;

if (image_index >= (image_number - 2) && image_index < (image_number - 1) && image_speed != 0)
{
    image_speed = 0;
    image_index = image_number - 2;
    alarm[1] = 15;
}

if (attack_rocks_spawned == false && floor(image_index == 12))
{
    break_sound = audio_play_sound(snd_rock_break, 1, 0);
    audio_sound_gain(break_sound, 0.7, 0);
    audio_sound_pitch(break_sound, 0.85);
    scr_screenshake_battle(6, 6);
    
    for (i = 0; i < 3; i++)
    {
        debris = instance_create_depth(x, y, depth - 1, obj_attack_ed_smash_boulders);
        debris.hspeed = -3.5 + (i * 3.5);
    }
}
