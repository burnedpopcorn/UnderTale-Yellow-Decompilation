if (clover_fall == true)
{
    if (obj_pl.y < (obj_pillow_snowdin_16b_overworld_yellow.y - 13))
    {
        obj_pl.y += 4;
    }
    else
    {
        clover_fall = false;
        instance_destroy(obj_clover_fall);
        obj_pl.image_alpha = 1;
        scr_cutscene_end();
    }
}

if (global.snowdin_flag[11] != 1)
{
    if (!audio_is_playing(snd_snowdin_bridge))
        audio_play_sound(snd_snowdin_bridge, 20, 1);
    
    audio_sound_gain(snd_snowdin_bridge, 0.25, 1);
}

if (!audio_is_playing(mus_ambient_river))
    audio_play_sound(mus_ambient_river, 20, 1);
