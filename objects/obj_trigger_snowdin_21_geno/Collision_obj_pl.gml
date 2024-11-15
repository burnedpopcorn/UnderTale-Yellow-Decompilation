if (active == false)
{
    scr_cutscene_start();
    scr_audio_fade_out(obj_radio.current_song, 500);
    obj_martlet_snowdin_21_geno.scene = 1;
    instance_destroy();
}
