if (scr_timer())
{
    if (image_speed == 0)
    {
        image_speed = 0.4;
        audio_play_sound(snd_clover_jump_dunes, 1, 0);
    }
}

if (on_animation_end())
{
    obj_pl.image_alpha = 1;
    scr_cutscene_end();
    global.dunes_flag[0] = 1;
    instance_destroy();
}
