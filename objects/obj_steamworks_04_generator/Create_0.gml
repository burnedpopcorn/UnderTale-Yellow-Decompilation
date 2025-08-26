if (global.sworks_flag[1] < 3)
{
    image_index = 0;
    image_speed = 0.25;
}
else
{
    sprite_index = spr_steamworks_04_generator_pink;
    var rumble_sound = audio_play_sound(snd_machinery, 1, 1);
    audio_sound_gain(rumble_sound, 0.75, 0);
    image_speed = 1/3;
}

depth = -y;

if (global.geno_complete[3] == true && global.sworks_flag[0] >= 1)
    instance_create_depth(201, 301, obj_steamworks_04_generator.depth - 1, obj_steamworks_04_generator_screen_geno);
